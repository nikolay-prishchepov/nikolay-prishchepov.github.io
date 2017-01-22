#!/usr/bin/gnuplot
reset
set title strftime("%T %D", time(0)+(3*3600))
set key left top
set xdata time
set style data lines
set timefmt "\"%m/%d/%y %H:%M:%S\""
set grid
set xlabel "Day"
set format x "%d"
set xtics 86400
set format y ""
set ytics 100
set yrange [0:900]
set y2tics 100
set y2range [0:900]
set style fill transparent solid 0.7 noborder
set term png truecolor enhanced size 1024,300
set output "/home/pi/cactus/ce54.png"
plot "/home/pi/cactus/ce54.csv" u 1:2       lc rgb '#0062ff' w boxes  title 'Humidity ' 
