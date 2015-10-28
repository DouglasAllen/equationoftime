set term png size 700,600 fsize 18 enhanced
set output "Equation of time.png"

set samples 500
unset border
unset key

set xrange [-60:390]
set xtics axis 90 offset 0, first 0.6
set mxtics 3
set xzeroaxis lc rgb "black" lw 3 lt -1
set xlabel "Day of year" ; 16.0,8.0

set yrange [-18:18]
set ytics axis 6
set mytics 2
set yzeroaxis lc rgb "black" lw 3 lt -1
set ylabel "Minutes" ; 10.0, 4.0

set grid mxtics xtics mytics ytics lt -1 lw 2 lc rgb "grey"

set style line 1 lc rgb "blue" lw 4 lt -1

b(x) = 2*pi*(x-81)/365

plot 9.87*sin(2*b(x)) - 7.53 * cos(b(x)) - 1.5*sin(b(x)) ls 1
