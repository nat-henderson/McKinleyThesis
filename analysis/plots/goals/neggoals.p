set term pdf font "Times-New-Roman,8"
set termoption dash

set key on
set key inside b r

set xlabel "Number of Negative Goals"
set ylabel "Time to Generate (seconds)"

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "neggoals.data" using 1:2 title "STRUCT" with lines ls 2
