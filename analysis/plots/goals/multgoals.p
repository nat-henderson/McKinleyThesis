set term pdf font "Times-New-Roman,8"
set termoption dash

set xlabel "Number of Goals"
set ylabel "Time to Generate (seconds)"
set yrange [2.5:4.5]
set key on
set key inside

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "multgoals.data" using 1:2 title "STRUCT" with lines ls 2
