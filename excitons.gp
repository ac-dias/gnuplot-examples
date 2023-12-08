gnuplot

set terminal pngcairo color size 1800,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative




set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.0

set style line 2 dt '-' \
    linecolor rgb 'blue' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

set style line 3 \
    linecolor rgb 'red' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 4 dt '-' \
    linecolor rgb 'red' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5



#set ylabel "Energy (eV)" font "Times-Roman,20"
#set xlabel "Energy-Efermi (eV)" font "Times-Roman,20"


set yrange[0.6:1.2]
set xrange[0:1]


set tics font ", 20"


set output 'excitons.png'

unset key

set multiplot layout 1,3

efermi= 0.0061
efermi2= 0.0415

set ytics ("0.6" 0.6, "0.8" 0.8, "1.0" 1.0, "1.2" 1.2 ) 
set xtics ("{/Symbol G}"  0.00000,"K"  0.333,"K'"  0.666,"{/Symbol G}"  1.0)

set arrow from  0.333,   0.6 to  0.333,   1.2 nohead dt 2 linewidth 2
set arrow from  0.666,   0.6 to  0.666,   1.2 nohead dt 2 linewidth 2


set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

#set title '(a) 1T CrTeSe-a' font "Times-Roman,20"
plot './out/bands_bse.dat' u ($1):($2) w linespoints linestyle 1 \


#set ylabel "Absorption Coefficient (10^{4} cm^{-1})" font "Times-Roman,20"
unset arrow
set xtics ("0.0" 0, "1.0" 1, "2.0" 2, "3.0" 3, "4.0" 4)
set ytics ("0" 0, "10" 10, "20" 20, "30" 30, "40" 40, "50" 50, "60" 60,"70" 70)
unset yrange
set yrange[0:70]
set xrange[0:3]


plot './out-4/bse_absorption_coef-pol.dat' u ($1):($2/10000) w lines linestyle 1 \
,'./out-4/bse_absorption_coef-pol.dat' u ($1):($3/10000) w lines linestyle 3 \
,'./out-4/sp_absorption_coef-pol.dat' u ($1):($2/10000) w lines linestyle 2 \
,'./out-4/sp_absorption_coef-pol.dat' u ($1):($3/10000) w lines linestyle 4 \


plot './out-4/bse_absorption_coef-pol.dat' u ($1):($5/10000) w lines linestyle 1 \
,'./out-4/bse_absorption_coef-pol.dat' u ($1):($6/10000) w lines linestyle 3 \
,'./out-4/sp_absorption_coef-pol.dat' u ($1):($5/10000) w lines linestyle 2 \
,'./out-4/sp_absorption_coef-pol.dat' u ($1):($6/10000) w lines linestyle 4 \

unset multiplot

q
