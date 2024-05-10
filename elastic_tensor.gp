gnuplot

set terminal pngcairo color size 1500,500 enhanced "Times New Roman,30.0"


set palette rgbformulae 33,13,10 negative



set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 2  \
    linecolor rgb 'red' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5
    
set style line 3 \
    linecolor rgb 'black' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 4 dt '-'  \
    linecolor rgb 'red' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5    



#set ylabel "Absorption Intensity (a.u)" font "Times-Roman,20"
#set xlabel "Photon Energy (eV)" font "Times-Roman,20"


#set yrange[-6:6]
#set xrange[0:4]

set tics font ", 20"



set output 'elastic_constants.png'

unset key

set multiplot layout 1,3

set polar
set angles degrees

############################################################################

set title "(a) Young's Modulus" font "Times-Roman,20"
plot 'MECHANICS_2D.dat' u 1:2 w lines linestyle 1 \

set title "(b) Shear-Modulus" font "Times-Roman,20"
plot 'MECHANICS_2D.dat' u 1:3 w lines linestyle 2 \

set title "(c) Poisson's-Ratio" font "Times-Roman,20"
plot 'MECHANICS_2D.dat' u 1:4 w lines linestyle 3 \




unset multiplot

q
