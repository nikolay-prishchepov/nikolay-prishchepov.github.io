#!/usr/bin/gnuplot
reset
set title strftime("%T %D", time(0)+(3*3600))
set key left top
set xdata time
set style data lines
set timefmt "\"%m/%d/%y %H:%M:%S\""
set grid
set xlabel "Day"
set ylabel "Humidity"
set y2label "Temperature"
set format x "%d"
set xtics 345600
set ytics 100
set yrange [0:900]
set y2tics 6
set y2range [0:54]
set style fill transparent solid 0.7 noborder
set term png truecolor enhanced size 1024,300
set output "/home/pi/www/cactus_1.png"
plot "/home/pi/www/cactus_1.csv" u 1:2       lc rgb '#0062ff' w boxes  title 'Humidity ' , \
     "/home/pi/www/cactus_1.csv" u 1:($3)    smooth bezier lc rgb '#ff0000' lw 2 w line  axis x1y2 title 'Temperature'
