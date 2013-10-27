set term pdf font "Times-New-Roman,8"
set output "complex-goal-anytime-zoom.pdf"
set termoption dash
set xlabel "Time (seconds)"
set ylabel "Score"
set key on
set key b r 
set style line 1 lt 2 lc rgb "black" lw 7
set style line 2 lt 1 lc rgb "black" lw 5
plot "complex-goal.anytimez" using 1:2 title "STRUCT" with lines ls 2
