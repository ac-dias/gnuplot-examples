gnuplot

set terminal pngcairo color size 1000,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative




set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.0

set style line 2  \
    linecolor rgb 'red' \
    linetype 1 linewidth 5 \
    pointtype 7 pointsize 1.0



set ylabel "Exciton Energy (eV)" font "Times-Roman,20"
#set xlabel "Energy-Efermi (eV)" font "Times-Roman,20"



set xrange[0:1]

set tics font ", 20"



set output 'bse_bands_mono.png'

unset key



set multiplot layout 1,2

set yrange[0.9:1.8]

set xtics ("{/Symbol G}"  0.00000,"X"  0.2917410,"S"  0.5000000 ,"Y"  0.7917410,"{/Symbol G}"  1.000000)

set arrow from  0.2917410,  0.9 to  0.2917410,   1.8 nohead dt 2 linewidth 2
set arrow from  0.5000000,  0.9 to  0.5000000,   1.8 nohead dt 2 linewidth 2
set arrow from  0.7917410,  0.9 to  0.7917410,   1.8 nohead dt 2 linewidth 2

set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

set title '(a) Black Phosphorene monolayer' font "Times-Roman,20"
plot './black-mono/out/bands_bse.dat' u ($1):($2) w linespoints linestyle 1 \



#unset ylabel
#unset


set yrange[0.7:1.9]

unset arrow
unset xtics 
set tics font ", 20"
set xtics ("{/Symbol G}"  0.00000,"K"  0.3333333,"K'" 0.6666667,"{/Symbol G}"  1.0000)

set arrow from  0.3333334,  0.7 to  0.3333334,   1.9 nohead dt 2 linewidth 2
set arrow from  0.6666666,  0.7 to  0.6666666,   1.9 nohead dt 2 linewidth 2

set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

set title '(b) Blue Phosphorene monolayer' font "Times-Roman,20"
plot './blue-mono/out/bands_bse.dat' u ($1):($2) w linespoints linestyle 1 \








unset multiplot

q
