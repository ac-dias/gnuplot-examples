gnuplot

set terminal pngcairo color size 2000,800 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative


set xtics ("{/Symbol G}"  0.00000,"X"  1.0)

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


set yrange[-3:6]
set xrange[0:1]

set tics font ", 20"

set arrow from  0.0,  0.0 to  1.0,   0.0 nohead dt 2 linewidth 2

set output 'bands_black-arm.png'

unset key

fermi_2=-5.1714
fermi_3=-5.8124
fermi_4=-5.6247
fermi_5=-5.5401

div2=0.67963269E+00
div3=0.67963269E+00
div4=0.67963269E+00
div5=0.67963269E+00

set multiplot layout 1,4



set title '(a) L=2' font "Times-Roman,20"
plot './pp-data/bands/black-arm-2_up.dat' u ($1/div2):($2-fermi_2) w lines linestyle 1 \
,'./pp-data/bands/black-arm-2_dn.dat' u ($1/div2):($2-fermi_2) w lines linestyle 2 \


#unset ylabel
#unset

set title '(b) L=3' font "Times-Roman,20"
plot './pp-data/bands/black-arm-3_up.dat' u ($1/div3):($2-fermi_3) w lines linestyle 1 \
,'./pp-data/bands/black-arm-3_dn.dat' u ($1/div3):($2-fermi_3) w lines linestyle 2 \



set title '(c) L=4' font "Times-Roman,20"
plot './pp-data/bands/black-arm-4_up.dat' u ($1/div4):($2-fermi_4) w lines linestyle 1 \
,'./pp-data/bands/black-arm-4_dn.dat' u ($1/div4):($2-fermi_4) w lines linestyle 2 \


set title '(d) L=5' font "Times-Roman,20"
plot './pp-data/bands/black-arm-5_up.dat' u ($1/div5):($2-fermi_5) w lines linestyle 1 \
,'./pp-data/bands/black-arm-5_dn.dat' u ($1/div5):($2-fermi_5) w lines linestyle 2 \









unset multiplot

q
