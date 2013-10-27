set term pdf font "Times-New-Roman,16"
set termoption dash
set output "complex-goal.pdf"
set logscale y
set xlabel "Referring Expression Length"
set ylabel "Time to Generate (seconds)"
set key on
set key top left
set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "complex-goal.data" using 1:2 title "CRISP" with lines ls 1, \
     "complex-goal.data" using 1:3 title "STRUCT, final" w lines ls 2, \
     "complex-goal.data" using 1:4 title "STRUCT, initial" w lines ls 3
