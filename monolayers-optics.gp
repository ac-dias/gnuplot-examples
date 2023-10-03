gnuplot

set terminal pngcairo color size 1600,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative




set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.0

set style line 2  \
    linecolor rgb 'red' \
    linetype 1 linewidth 5 \
    pointtype 7 pointsize 1.0
    
set style line 3 dt '-' \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.0

set style line 4  dt '-' \
    linecolor rgb 'red' \
    linetype 1 linewidth 5 \
    pointtype 7 pointsize 1.0    



set ylabel "Absorption Coefficient (10^{4} cm^{-1})" font "Times-Roman,20"
#set xlabel "Energy-Efermi (eV)" font "Times-Roman,20"



set xrange[0.5:4]

set tics font ", 20"



set output 'optics_mono.png'

unset key



set multiplot layout 1,2

#set yrange[0.9:1.8]


set title '(a) Black Phosphorene monolayer' font "Times-Roman,20"
plot './black-mono/out/bse_absorption_coef.dat' u ($1):($2/1E4) w lines linestyle 1 \
,'./black-mono/out/bse_absorption_coef.dat' u ($1):($3/1E4) w lines linestyle 2 \
,'./black-mono/out/sp_absorption_coef.dat' u ($1):($2/1E4) w lines linestyle 3 \
,'./black-mono/out/sp_absorption_coef.dat' u ($1):($3/1E4) w lines linestyle 4 \



#unset ylabel
#unset


#set yrange[0.7:1.9]



set title '(b) Blue Phosphorene monolayer' font "Times-Roman,20"
plot './blue-mono/out/bse_absorption_coef.dat' u ($1):($2/1E4) w lines linestyle 1 \
,'./blue-mono/out/bse_absorption_coef.dat' u ($1):($3/1E4) w lines linestyle 2 \
,'./blue-mono/out/sp_absorption_coef.dat' u ($1):($2/1E4) w lines linestyle 3 \
,'./blue-mono/out/sp_absorption_coef.dat' u ($1):($3/1E4) w lines linestyle 4 \








unset multiplot

q
