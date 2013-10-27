set term pdf font "Times-New-Roman,16"
set termoption dash
set output "complex-goal-anytime.pdf"
set xlabel "Time (seconds)"
set ylabel "Score"
set key on
set key bottom right
set style line 1 lt 2 lc rgb "black" lw 7
set style line 2 lt 1 lc rgb "black" lw 5
plot "complex-goal.anytime" using 1:2 title "STRUCT" with lines ls 2, \
     "complex-goal.anytime" using 1:3 title "CRISP" with lines ls 1
