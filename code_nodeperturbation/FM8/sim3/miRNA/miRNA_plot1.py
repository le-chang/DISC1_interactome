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
    data = util.bload( 'miRNA1.bin' )

    # each of these is a dictionary keyed by nodes
    run1, run2, run3, run4, run5, run6, run7, run8, run9, run10, run11, run12  = data 

    # applies smoothing to all values
    for run in (run1, run2, run3, run4, run5, run6, run7, run8, run9, run10, run11, run12):
        for key, values in run.items():
            run[key] = smooth( values, w=10 )
    
    #
    # Plotting Migration (ON)
    #
    fig = plt.figure(figsize=(4.5,2.5), facecolor='w', edgecolor='k')
    plott = fig.add_subplot(111)
    mig1, mig2, mig3, mig4, mig5, mig6= run1['Migration'], run2['Migration'], run3['Migration'], run4['Migration'], run5['Migration'], run6['Migration']
    mig7, mig8, mig9, mig10, mig11, mig12 = run7['Migration'],run8['Migration'],run9['Migration'], run10['Migration'], run11['Migration'], run12['Migration']

    ps = [  plot( mig1, 'go-',markersize=3, linewidth=0.2  ), plot( mig2, 'ro-',markersize=3, linewidth=0.2  ),plot( mig3,'bo-',markersize=3, linewidth=0.2 ),\
        plot( mig4, 'yo-',markersize=3, linewidth=0.2  ),plot( mig5, 'co-',markersize=3, linewidth=0.2  ), plot( mig6, color='orange', marker='o', linestyle='-',markersize=3, linewidth=0.2  ), \
        plot( mig7, 'g^-', markersize=3, linewidth=0.2), plot( mig8, 'r^-',markersize=3, linewidth=0.2), \
        plot( mig9, 'b^-',markersize=3, linewidth=0.2), plot( mig10, 'y^-',markersize=3, linewidth=0.2), plot( mig11, 'c^-',markersize=3, linewidth=0.2 ), \
        plot( mig12, color='orange', marker='^', linestyle='-',markersize=3, linewidth=0.2 )]
    legend( ['OE miR20a','OE miR33b','OE miR103a', 'OE miR145', 'OE miR10b', 'OE miR320a','KO miR20a','KO miR33b', 'KO miR103a', 'KO miR145', 'KO miR10b', 'KO miR320a'], loc='upper center', bbox_to_anchor=(0.5, -0.18), ncol=4, fontsize=7 )
    title( ' Effect of perturbation of miRNAs on migration \n Functional module 8, Simulation 3', fontsize=10  )
    xlabel( 'Time Steps', fontsize=9 )
    ylabel( 'Percent (%)', fontsize=9 )
    ylim( (-0.1, 1.1) ) 
    xlim( (-0.1, 140) )
    plott.tick_params(axis='both', which='major', labelsize=8)
    plott.yaxis.set_ticks_position('left')
    plott.xaxis.set_ticks_position('bottom')
    savefig('RHEB_miRNA_Sim3_1-140_plot1.svg', transparent=True, bbox_inches='tight')
    savefig('RHEB_miRNA_Sim3_1-140_plot1.png', transparent=True, bbox_inches='tight')
    savefig('RHEB_miRNA_Sim3_1-140_plot1.pdf', transparent=True, bbox_inches='tight')
    #
    
    # Plotting Migration (OFF)
    #
    #subplot(122)
    fig = figure(figsize=(2.25,1.25), facecolor='w', edgecolor='k')
    plott = fig.add_subplot(111)
    mig1, mig2, mig3, mig4, mig5, mig6= run1['Migration'], run2['Migration'], run3['Migration'], run4['Migration'], run5['Migration'], run6['Migration']
    mig7, mig8, mig9, mig10, mig11, mig12 = run7['Migration'],run8['Migration'],run9['Migration'], run10['Migration'], run11['Migration'], run12['Migration']
    ps = [  plot( mig1, 'go-', markersize=2, linewidth=0.1  ), plot( mig2, 'ro-', markersize=2, linewidth=0.1  ),plot( mig3,'bo-', markersize=2, linewidth=0.1),\
        plot( mig4, 'yo-', markersize=2, linewidth=0.1 ),plot( mig5, 'co-', markersize=2, linewidth=0.1  ), plot( mig6, color='orange', marker='o', linestyle='-', markersize=2, linewidth=0.1 ), \
        plot( mig7, 'g^-', markersize=2, linewidth=0.1), plot( mig8, 'r^-', markersize=2, linewidth=0.1), \
        plot( mig9, 'b^-', markersize=2, linewidth=0.1), plot( mig10, 'y^-', markersize=2, linewidth=0.1), plot( mig11, 'c^-', markersize=2, linewidth=0.1 ), \
        plot( mig12, color='orange', marker='^', linestyle='-', markersize=2, linewidth=0.1 )]
    ylim( (-0.1, 1.1) ) 
    xlim( (-0.1, 20) )
    plott.tick_params(axis='both', which='major', labelsize=6)
    plott.yaxis.set_ticks_position('left')
    plott.xaxis.set_ticks_position('bottom')
    plott.spines['right'].set_visible(False)
    plott.spines['top'].set_visible(False)
    savefig('RHEB_miRNA_Sim3_1-20_plot1.svg',  transparent=True, bbox_inches='tight')
    savefig('RHEB_miRNA_Sim3_1-20_plot1.png',  transparent=True, bbox_inches='tight')
    savefig('RHEB_miRNA_Sim3_1-20_plot1.pdf',  transparent=True, bbox_inches='tight')
    
if __name__ == '__main__':
    
    # resize this to change figure size
    #figure(num = None, figsize=(14, 7), dpi=80, facecolor='w', edgecolor='k')
    make_plot( )
    #savefig('miRNA1.pdf')
    #show()
    