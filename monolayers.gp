gnuplot

set terminal pngcairo color size 1000,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative




set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 2  \
    linecolor rgb 'red' \
    linetype 1 linewidth 5 \
    pointtype 7 pointsize 1.5



set ylabel "Energy (eV)" font "Times-Roman,20"
#set xlabel "Energy-Efermi (eV)" font "Times-Roman,20"


set yrange[-5:7]
set xrange[0:1]

set tics font ", 20"



set output 'bands_mono.png'

unset key

fermi_2=-2.2034
fermi_3=-3.5803


div2=0.32634020E+01
div3=0.38306171E+01


set multiplot layout 1,2

set xtics ("{/Symbol G}"  0.00000,"X"  0.2917410,"S"  0.5000000 ,"Y"  0.7917410,"{/Symbol G}"  1.000000)

set arrow from  0.2917410,  -5.0 to  0.2917410,   7 nohead dt 2 linewidth 2
set arrow from  0.5000000,  -5.0 to  0.5000000,   7 nohead dt 2 linewidth 2
set arrow from  0.7917410,  -5.0 to  0.7917410,   7 nohead dt 2 linewidth 2

set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

set title '(a) Black Phosphorene monolayer' font "Times-Roman,20"
plot './black-mono/wannier90_band.dat' u ($1/div2):($2-fermi_2) w lines linestyle 1 \



#unset ylabel
#unset

unset arrow
unset xtics 
set tics font ", 20"
set xtics ("{/Symbol G}"  0.00000,"K"  0.3333333,"K'" 0.6666667,"{/Symbol G}"  1.0000)

set arrow from  0.3333334,  -5.0 to  0.3333334,   7 nohead dt 2 linewidth 2
set arrow from  0.6666666,  -5.0 to  0.6666666,   7 nohead dt 2 linewidth 2

set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

set title '(b) Blue Phosphorene monolayer' font "Times-Roman,20"
plot './blue-mono/wannier90_band.dat' u ($1/div3):($2-fermi_3) w lines linestyle 1 \








unset multiplot

q
