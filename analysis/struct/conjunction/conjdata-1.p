set term pdf font "Times-New-Roman,16"
set termoption dash
set output "conjunction1.pdf"
set xlabel "Number of Sentences"
set ylabel "Time to Generate (seconds)"
set key on
set key inside t l

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "conjdata.data" using 1:2 title "STRUCT (1 entity)" with lines ls 1, \
     "conjdata.data" using 1:5 title "CRISP (1 entity)" with lines ls 3
