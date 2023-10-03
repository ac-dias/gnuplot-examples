gnuplot

set terminal pngcairo color size 800,600 enhanced "Times New Roman,40.0"


set palette rgbformulae 33,13,10 negative


#set xtics ("{/Symbol G}"  0.00000,"K"  0.4226499,"M"  0.6339749,"{/Symbol G}"  1.0)

set style line 1 \
    linecolor rgb 'blue' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5

set style line 2 \
    linecolor rgb 'red' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5
    
    
set style line 3   \
    linecolor rgb 'dark-green' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5    

set style line 4   \
    linecolor rgb 'black' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5  
    
set style line 5   \
    linecolor rgb 'grey' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5
    
set style line 6   \
    linecolor rgb 'orchid' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5          



set ylabel "DoS (electrons/eV)" font "Times-Roman,20"
set xlabel "Energy (eV)" font "Times-Roman,20"



set xrange[-5:5]

set tics font ", 20"


set output 'dos.png'

unset key

set arrow from  0.0,  0.0 to  0.0,   12 nohead dt 2 linewidth 2

efermi=-0.0067

#set yrange[0.5:2]

#set title '(a) Linear Polarization' font "Times-Roman,20"
plot './dos/DOS_0g.dat' u ($1-efermi):2 w lines linestyle 4 \
,'./dos/DOS_Ti.dat' u ($1-efermi):3 w lines linestyle 1 \
,'./dos/DOS_Ti.dat' u ($1-efermi):4 w lines linestyle 2 \
,'./dos/DOS_Ti.dat' u ($1-efermi):5 w lines linestyle 3 \
,'./dos/DOS_Br.dat' u ($1-efermi):3 w lines linestyle 5 \
,'./dos/DOS_Br.dat' u ($1-efermi):4 w lines linestyle 6 \
















unset multiplot

q
