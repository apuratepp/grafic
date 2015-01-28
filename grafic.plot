set terminal svg enhanced size 600,400
set output 'out.svg'
set key box
set key left
set samples 1000
set grid
set ylabel "ε (J·Kg^{-1}·step^{-1})"
set xlabel "Gradient i"
plot [-.5:.5] ( 5.88*x+0.5044 > 0 ? (5.88*x+0.5044) : (-0.2*(5.88*x + 0.5044))) lt 1 lw 1.5 lc rgb "black" title "K=1.50", \
( 7.056*x+0.5891 > 0 ? (7.056*x+0.5891) : (-0.2*(7.056*x + 0.5891))) lt 2 lw 1.5 lc rgb "black" title "K=1.25", \
( 8.82*x+1.1816 > 0 ? (8.82*x+1.1816) : (-0.2*(8.82*x + 1.1816))) lt 3 lw 1.5 lc rgb "black" title "K=1.00"
