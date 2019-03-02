net <- loadNetwork("attractor_input.txt")

attrs <- getAttractors(net,
                       type = c("asynchronous"),
                       method = c("random"),
                       startStates = 524288, #2 to the power of 19 states used here as initial states
                       genesON = c(), genesOFF = c(),
                       canonical = TRUE,
                       randomChainLength = 10000,
                       avoidSelfLoops = TRUE,#the asynchronous attractors search only enters self loops (i.e. transitions that result in the same state) if none of the possible transitions can leave the state
                       geneProbabilities = NULL,
                       maxAttractorLength = Inf,
                       returnTable = TRUE)


perturbationResults <- sapply(1:3000, function(i)
{
  # perturb network and identify attractors
  perturbedNet <- perturbNetwork(net, perturb="functions", method="shuffle")
  perturbedAttrs <- getAttractors(perturbedNet, type = c("asynchronous"),
                                  method = c("random"),
                                  startStates = 524288, #2^19 states used here as initial states
                                  genesON = c(), genesOFF = c(),
                                  canonical = TRUE,
                                  randomChainLength = 10000,
                                  avoidSelfLoops = TRUE,#the asynchronous attractors search only enters self loops (i.e. transitions that result in the same state) if none of the possible transitions can leave the state
                                  geneProbabilities = NULL,
                                  maxAttractorLength = Inf,
                                  returnTable = TRUE)
  # check whether the attractors in the original network exist in the perturbed network
  attractorIndices <- sapply(attrs$attractors,function(attractor1)
  {
    index <- which(sapply(perturbedAttrs$attractors, function(attractor2)
    {
      identical(attractor1, attractor2)
    }))
    if (length(index) == 0)
      NA
    else
      index
  })
  return(attractorIndices)
})
numOccurrences <- apply(perturbationResults[seq_along(attrs$attractors),,drop=FALSE], 1,
                        function(row)sum(!is.na(row)))
# print original attractors
cat("Attractors in original network:\n")
print(attrs)
# print information
cat("Number of occurrences of the original attractors",
    "in 3000 perturbed copies of the network:\n")
for (i in 1:length(attrs$attractors))
{
  cat("Attractor ",i,": ",numOccurrences[i],"\n",sep="")
}
results1 <- capture.output(attr, file="attractor_output.txt")
#saveRDS(perturbedAttrs, file="attractor_output.rds")
#save(list = ls(all.names = TRUE), file = "attractor_output_all_vars.RData", envir = .GlobalEnv)
