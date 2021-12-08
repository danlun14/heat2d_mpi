set terminal png size 1000, 450 font 'Verdana, 10'
set output 'Heat2d_mpi.png' 
set title "Heat 2D MPI"
set xlabel 'Number of processes'
set ylabel 'Speedup'

set key left top

set grid lc rgb  '#555555' lw 1 lt 4
set grid lc rgb '#555555' lw 1 lt 4

set xtics 8
set ytics 8

set xrange [8:64]
set yrange [1:64]

plot '10000.txt' using 1:2 with linespoints lw 1 lt rgb 'blue' title 'heat 2d (n = 10000)', \
 '14000.txt' using 1:2 with linespoints lw 1 lt rgb 'red' title 'heat 2d (n = 14000)', \
 'linear.txt' using 1:2 with linespoints lw 1 lt rgb 'black' title 'Linear speedup'
