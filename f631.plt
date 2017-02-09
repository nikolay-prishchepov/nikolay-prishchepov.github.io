#!/usr/bin/gnuplot
reset
set title strftime("%T %D", time(0)+(3*3600))
set key left top
set grid

set xdata time
set style data lines
set timefmt "\"%m/%d/%y %H:%M:%S\""
set xlabel "Day"
set format x "%d"
set xtics 86400

set format y ""
set ytics 100
set yrange [0:900]

#set format y2 ""
set y2tics 5
set y2range [0:45]

set style fill transparent solid 0.7 noborder
set term png truecolor enhanced size 1024,300
set output "/home/pi/cactus/f631.png"

plot "/home/pi/cactus/f631.csv" u 1:2             lc rgb '#0062ff' w boxes  title 'Humidity ',\
     "/home/pi/cactus/f631.csv" u 1:($3*20)       lc rgb '#ff0000' w lines  title 'Temperature °C',\
     "/home/pi/cactus/f631.csv" u 1:($4/5)        lc rgb '#00ff00' w lines  title 'Battery V*10'
