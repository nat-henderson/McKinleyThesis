set term pdf font "Times-New-Roman,16"
set termoption dash
set output "nested.pdf"
set xlabel "Time (seconds)"
set ylabel "Score"
set key on
set key inside t l

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "nested.data" using 2:1 title "Generated Score" with lines ls 1,\
     "nested.data" using 3:4 title "Best Available Score" with lines ls 3
