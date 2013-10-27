set term pdf font "Times-New-Roman,8"
set termoption dash
set output "differentgoals.pdf"
set xlabel "Number of Goals"
set ylabel "Time to Generate (seconds)"
set key on
set key inside t l

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "multgoals.data" using 1:2 title "Positive Goals" with lines ls 2, \
     "neggoals.data" using 1:2 title "Negative Goals" with lines ls 1
