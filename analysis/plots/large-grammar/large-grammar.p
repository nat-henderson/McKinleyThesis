set term pdf font "Times-New-Roman,16"
set termoption dash
set output "large-grammar.pdf"
set xlabel "Adjoining Grammar Size"
set ylabel "Time to Generate (seconds)"
set key on
set key inside t l

set xrange[10:60]

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "large-grammar.data" using 1:2 title "CRISP" with lines ls 1, \
     "large-grammar.data" using 1:4 title "STRUCT" with lines ls 3, \
     "large-grammar.data" using 1:5 title "STRUCT (pruning)" with lines ls 2
