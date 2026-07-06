set datafile separator comma
set terminal pngcairo size 700,500 enhanced font "Hiragino Sans,14"
set output "digital-ranking.png"
set grid ytics
set ylabel "順位"
set yrange [60:0]
set ytics ("1" 1, "10" 10, "20" 20, "30" 30, "40" 40, "50" 50, "60" 60)
set style data histograms
set style histogram clustered gap 1
set style fill solid 0.55 border -1
set boxwidth 0.8
set key outside right top
set xtics rotate by -90

plot "digital-ranking.csv" using 2:xtic(1) title "総合" lc rgb "#b9dcea", \
     "" using 3 title "知識" lc rgb "#a8e6a2"
