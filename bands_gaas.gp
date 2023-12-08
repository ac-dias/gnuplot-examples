gnuplot

set terminal pngcairo color size 2000,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative




set style line 1 \
    linecolor rgb 'black' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 2 dt '-' \
    linecolor rgb 'red' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

set style line 3 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5



set ylabel "Energy (eV)" font "Times-Roman,20"
#set xlabel "Energy-Efermi (eV)" font "Times-Roman,20"


set yrange[-15:12]
set xrange[0:1]
set cbrange[0:1]

set tics font ", 20"




set output 'bands_gaas.png'

unset key

set multiplot layout 1,2



set xtics ("L" 0.0, "{/Symbol G}" 0.1824685, "X" 0.3931649, "W" 0.4985131, "L" 0.6474980 , "K" 0.7765227, "{/Symbol G}" 1.0)

set arrow from  0.1824685,  -15.0 to  0.1824685,   12 nohead dt 2 linewidth 2
set arrow from  0.3931649,  -15.0 to  0.3931649,   12 nohead dt 2 linewidth 2
set arrow from  0.4985131,  -15.0 to  0.4985131,   12 nohead dt 2 linewidth 2
set arrow from  0.6474980,  -15.0 to  0.6474980,   12 nohead dt 2 linewidth 2
set arrow from  0.7765227,  -15.0 to  0.7765227,   12 nohead dt 2 linewidth 2


set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

#set title '(a) MoS_{2} monolayer' font "Times-Roman,20"
plot './gaas/bands_ga-sp.dat' u 1:2:4 w linespoints pointtype 7 ps 0.1 lw 2 palette t " " \

####################################################################################

#unset arrow
#unset xtics
set key

#set title '(b) Janus MoSeS/MoSeS' font "Times-Roman,20"
plot './gaas/bands_as-s.dat' u 1:2:($4*2) w points pt 6 ps variable linecolor rgb 'red' title "As-s"\
,'./gaas/bands_as-p.dat' u 1:2:($4*2) w points pt 6 ps variable linecolor rgb 'green' title "As-p"\
, './gaas/bands_ga-s.dat' u 1:2:($4*2) w points pt 6 ps variable linecolor rgb 'black' title "Ga-s"\
, './gaas/bands_ga-p.dat' u 1:2:($4*2) w points pt 6 ps variable linecolor rgb 'blue' title "Ga-p"\



unset multiplot

q

