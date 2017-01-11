#set terminal pngcairo enhanced font "arial,10" fontscale 1.0 size 400, 240
set terminal postscript eps size 3.5,2.0 enhanced color font 'Helvetica,12' linewidth 1
set bar 2.000000 front
set boxwidth 1.0 absolute
set style fill solid 1.00 border lt -1
#set style circle radius graph 0.02, first 0.00000, 0.00000 
#set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set ylabel "Average User Rating"
set yrange [0:10]
GAPSIZE=10 
set style histogram cluster gap 1
STARTCOL=2                 #Start plotting data in this column (2 for your example)
ENDCOL=6                   #Last column of data to plot (10 for your example)
NCOL=ENDCOL-STARTCOL+1     #Number of columns we're plotting 
BOXWIDTH=1./(GAPSIZE+NCOL) #Width of each box.

set output 'rating.eps'
plot for [COL=STARTCOL:ENDCOL] 'rating.csv' u COL:xtic(1) w histogram title columnheader(COL)
#for [COL=STARTCOL:ENDCOL] 'rating.csv' u (column(0)-1+BOXWIDTH*(COL-STARTCOL+GAPSIZE/2+1)-0.5):COL:COL notitle w labels








