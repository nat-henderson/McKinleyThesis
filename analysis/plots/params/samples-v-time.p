set term pdf font "Times-New-Roman,8"
set termoption dash

set xlabel "Number of Simulations"
set ylabel "Average Time to Complete (seconds)"
set key on
set key inside t l

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "pltag-0-time" using 1:2 title "d = 0" with lines ls 1,\
    "pltag-2-time" using 1:2 title "d = 2" with lines ls 2,\
    "pltag-4-time" using 1:2 title "d = 4" with lines ls 3
