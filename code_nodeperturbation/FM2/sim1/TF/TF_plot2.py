"""
Plots results for the paper

"""
from pylab import *
from boolean2 import util

def smooth(data, w=0):
    "Smooths data by a moving window of width 'w'"
    fw = float(w)
    def average( index ):
        return sum( data[index: index+w] )/fw
    indices = xrange( len(data) - w )        
    out = map( average, indices )
    return out

def make_plot():
    
    # contains averaged node information based on 1000 runs
    data = util.bload( 'TF2.bin' )

    # each of these is a dictionary keyed by nodes
    run1, run2, run3, run4, run5, run6 = data 

    # applies smoothing to all values
    for run in (run1, run2, run3, run4, run5, run6):
        for key, values in run.items():
            run[key] = smooth( values, w=10 )
    
    #
    # Plotting Migration (ON)
    #
    fig = plt.figure(figsize=(4.5,2.5), facecolor='w', edgecolor='k')
    plott = fig.add_subplot(111)
    mig1, mig2, mig3= run1['Migration'], run2['Migration'],run3['Migration'] 
    mig4, mig5, mig6 = run4['Migration'],run5['Migration'],run6['Migration']
    ps = [ plot( mig1, 'go-',markersize=3, linewidth=0.2 ), plot( mig2, 'ro-',markersize=3, linewidth=0.2 ),plot( mig3,'bo-',markersize=3, linewidth=0.2), plot( mig4, 'g^-',markersize=3, linewidth=0.2 ), plot( mig5, 'r^-',markersize=3, linewidth=0.2 ), plot( mig6, 'b^-' ,markersize=3, linewidth=0.2)]
    legend( ['OE CCND1','OE CREB1', 'OE POU5F1', 'KO CCND1', 'KO CREB1', 'KO POU5F1'], loc='upper center', bbox_to_anchor=(0.5, -0.18), ncol=2, fontsize=8  )
    title( ' Effect of perturbation of TFs on migration \n Functional module 2, Simulation 1', fontsize=10  )
    xlabel( 'Time Steps', fontsize=9 )
    ylabel( 'Percent (%)', fontsize=9 )
    ylim( (-0.1, 1.1) ) 
    xlim( (-0.1, 140) )
    plott.tick_params(axis='both', which='major', labelsize=8)
    plott.yaxis.set_ticks_position('left')
    plott.xaxis.set_ticks_position('bottom')
    savefig('ZNF365_TF_Sim1_1-140_plot2.svg', transparent=True, bbox_inches='tight')
    savefig('ZNF365_TF_Sim1_1-140_plot2.png', transparent=True, bbox_inches='tight')
    savefig('ZNF365_TF_Sim1_1-140_plot2.pdf', transparent=True, bbox_inches='tight')
    #
    # Plotting Migration (OFF)
    #
    fig = figure(figsize=(2.25,1.25), facecolor='w', edgecolor='k')
    plott = fig.add_subplot(111)
    mig1, mig2, mig3= run1['Migration'], run2['Migration'],run3['Migration']
    mig4, mig5, mig6 = run4['Migration'],run5['Migration'],run6['Migration']

    ps = [ plot( mig1, 'go-' , markersize=2, linewidth=0.1 ), plot( mig2, 'ro-', markersize=2, linewidth=0.1  ),plot( mig3,'bo-', markersize=2, linewidth=0.1 ), plot( mig4, 'g^-', markersize=2, linewidth=0.1  ), plot( mig5, 'r^-', markersize=2, linewidth=0.1  ), plot( mig6, 'b^-', markersize=2, linewidth=0.1  )]
    ylim( (-0.1, 1.1) ) 
    xlim( (-0.1, 20) )
    plott.tick_params(axis='both', which='major', labelsize=6)
    plott.yaxis.set_ticks_position('left')
    plott.xaxis.set_ticks_position('bottom')
    plott.spines['right'].set_visible(False)
    plott.spines['top'].set_visible(False)
    savefig('ZNF365_TF_Sim1_1-20_plot2.svg',  transparent=True, bbox_inches='tight')
    savefig('ZNF365_TF_Sim1_1-20_plot2.png',  transparent=True, bbox_inches='tight')
    savefig('ZNF365_TF_Sim1_1-20_plot2.pdf',  transparent=True, bbox_inches='tight')

if __name__ == '__main__':
    
    # resize this to change figure size
    #figure(num = None, figsize=(14, 7), dpi=80, facecolor='w', edgecolor='k')
    make_plot( )
    #savefig('TF2.pdf')
    #show()
    

    
   
