"""
Migration simulator

It is also a demonstration on how the collector works

"""
import boolean2
from boolean2 import Model, util
from random import choice

# ocasionally randomized nodes
TARGETS = set( "Migration".split()  )

def new_getvalue( state, name, p):
    """
    Called every time a node value is used in an expression. 
    It will override the value for the current step only.
    Returns random values for the node states
    """
    global TARGETS
    value = util.default_get_value( state, name, p ) 

    if name in TARGETS:
        # pick at random from True, False and original value
        return choice( [True, False, value] )  
    else:
        return value 

def run( text, nodes, repeat, steps ):
    """
    Runs the simulation and collects the nodes into a collector, 
    a convenience class that can average the values that it collects.
    """
    coll = util.Collector()
    
    for i in xrange( repeat ):
        engine  = Model( mode='async', text=text )
        engine.RULE_GETVALUE = new_getvalue
        # minimalist initial conditions, missing nodes set to false
        engine.initialize( missing=util.false )
        engine.iterate( steps=steps)
        coll.collect( states=engine.states, nodes=nodes )

    print '- completed'
    avgs = coll.get_averages( normalize=True )
    return avgs

if __name__ == '__main__':

    # read in the text
    text = file( 'sim3.txt').read()

    # the nodes of interest that are collected over the run
    # NODES  = 'Apoptosis STAT3 FasL Ras'.split()
    
    # this collects the state of all nodes 
    NODES  = boolean2.all_nodes( text )

    #
    # raise this for better curves (will take about 2 seconds per repeat)
    # plots were made for REPEAT = 1000, STEPS=150
    #
    REPEAT = 1000
    STEPS  = 150

    data = []
    
    print '- starting simulation with REPEAT=%s, STEPS=%s' % (REPEAT, STEPS)

    # multiple overexrpessed nodes
    mtext = boolean2.modify_states( text=text, turnon=['miR423'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    mtext = boolean2.modify_states( text=text, turnon=['miR20a'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    mtext = boolean2.modify_states( text=text, turnon=['miR183'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    mtext = boolean2.modify_states( text=text, turnon=['miR320a'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )
     
    mtext = boolean2.modify_states( text=text, turnoff=['miR423'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    mtext = boolean2.modify_states( text=text, turnoff=['miR20a'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    mtext = boolean2.modify_states( text=text, turnoff=['miR183'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )
    
    mtext = boolean2.modify_states( text=text, turnoff=['miR320a'] )
    avgs = run( text=mtext, repeat=REPEAT, nodes=NODES, steps=STEPS) 
    data.append( avgs )

    fname = 'miRNA2.bin'
    util.bsave( data, fname=fname )
    print '- data saved into %s' % fname
    