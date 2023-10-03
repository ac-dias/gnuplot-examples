
#set terminal pngcairo color size 1000,500 enhanced font "Times,10" 
set terminal pngcairo color size 1500,1000 enhanced  font "Times,15"
#set terminal pdfcairo dashed color enhanced dl 1 size 15.5cm,7cm font "Times,11" linewidth 1.0 

set palette rgbformulae 33,13,10 negative

unset key

set label 1 at graph 0.25,0.08
set label 1 "K" tc rgb "black" font "Times,15" front
set label 2 at graph 0.95,0.53
set label 2 "K" tc rgb "black" font "Times,15" front
set label 3 at graph 0.25,0.91
set label 3 "K" tc rgb "black" font "Times,15" front

set label 4 at graph 0.71,0.08
set label 4 "K'" tc rgb "black" font "Times,15" front
set label 5 at graph 0.71,0.91
set label 5 "K'" tc rgb "black" font "Times,15" front
set label 6 at graph  0.01,0.53
set label 6 "K'" tc rgb "black" font "Times,15" front

set ylabel "ky" font ",20"
set xlabel "kx" font ",20"

set yrange[-1.5:1.5]
#set yrange[0:20]
set xrange[-1.5:1.5]

set output 'opt-bz-intensity_tibr2.png'

set tics font ",20"

set multiplot layout 2,3

unset key
#########################################################################

set title '(a) {/Symbol s}^{+} Polarization' font "Times,20"

#set cbrange[0:30]

plot './out-3/bz_act_sp.dat' u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

unset ylabel
set title '(b) {/Symbol s}^{-} Polarization' font "Times,20"

#set cbrange[0:60]

plot './out-3/bz_act_sm.dat'  u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

set title '(c) Circular Dichroism' font "Times,20"

set cbrange[-1:1]

plot './out-3/dichroism_cp.dat' u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "


unset cbrange

set title '(d) Linear x Polarization' font "Times,20"

#set cbrange[0:30]

plot './out-3/bz_act_x.dat' u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

unset ylabel
set title '(e) Linear y Polarization' font "Times,20"

#set cbrange[0:60]

plot './out-3/bz_act_y.dat'  u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

set title '(f) Linear Dichroism' font "Times,20"

set cbrange[-1:1]

plot './out-3/dichroism_xy.dat' u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

#set cbrange[-1:1]

#set title '(c) Dichroism' font "Times,20"

#plot './out-bz/dichroism_cp.dat' u 1:2:4 w points pointtype 7 ps 0.1 lw 2 palette t " "

#########################################################################





unset multiplot


