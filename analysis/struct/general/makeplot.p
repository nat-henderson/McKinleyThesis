set term png
# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 500, 350 
# set output 'heatmaps.2.png'
unset key
set view map
set xtics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ztics border in scale 0,0 nomirror norotate  offset character 0, 0, 0 autojustify
set nocbtics
set rtics axis in scale 0,0 nomirror norotate  offset character 0, 0, 0 autojustify
set title "Score vs Samples and Depth"
set xlabel "Depth"
set ylabel "Samples"
set xrange [ 0.00000 : 8 ] noreverse nowriteback
set yrange [ 10.00000 : 100 ] noreverse nowriteback
set cblabel "Score" 
set cbrange [ 90.00000 : 100 ] noreverse nowriteback
plot 'test.txt' using 2:1:3 with image
