set term pdf font "Times-New-Roman,16"
set termoption dash
set output "conjunction3.pdf"
set xlabel "Number of Sentences"
set ylabel "Time to Generate (seconds)"
set xtics 1
set key on
set key inside t l

set style line 1 lt 2 lc rgb "black" lw 5
set style line 2 lt 1 lc rgb "black" lw 5
set style line 3 lt 3 lc rgb "black" lw 5

plot "conjdata.data" using 1:4 title "STRUCT, 3 entities" with lines ls 1
