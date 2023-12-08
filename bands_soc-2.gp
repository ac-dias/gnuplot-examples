gnuplot

set terminal pngcairo color size 800,600 enhanced "Times New Roman,40.0"


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


set yrange[-1.5:3]
set xrange[0:1]
set cbrange[-1:1]

set tics font ", 20"


set output 'bands_soc-teste.png'

unset key



set ytics ("-1.0" -1.0,"0.0" 0, "1.0" 1, "2.0" 2,"3.0" 3)
set xtics ("{/Symbol G}"  0.00000,"K"  0.333,"K'"  0.666,"{/Symbol G}"  1.0)

set arrow from  0.333,  -1.5 to  0.333,   3 nohead dt 2 linewidth 2
set arrow from  0.666,  -1.5 to  0.666,   3 nohead dt 2 linewidth 2


set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

#set title '(a) 1T CrTeSe-a' font "Times-Roman,20"
plot 'bands-W.dat' u ($1):($2):5 w linespoints pointtype 7 ps 0.1 lw 2 palette t " " \





q
