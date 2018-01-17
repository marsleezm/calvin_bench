#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend

seq="1 2 3"
for i in $seq
do
./benchmark.sh spec_calvin m 650 0 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 0 5 1000 40 2 200 10

./benchmark.sh spec_calvin m 650 0 50 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 50 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 50 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 50 5 1000 40 2 200 10

./benchmark.sh spec_calvin m 650 0 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 100 5 1000 40 2 200 10

./benchmark.sh spec_calvin m 650 0 0 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 0 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 0 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 0 5 50000 40 2 200 10

./benchmark.sh spec_calvin m 650 0 50 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 50 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 50 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 50 5 50000 40 2 200 10

./benchmark.sh spec_calvin m 650 1 100 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 190 1 100 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 100 10 100 5 50000 40 2 200 10
./benchmark.sh spec_calvin m 80 50 100 5 50000 40 2 200 10
done
exit
for i in $seq
do
./benchmark.sh ssmr m 400 0 0 5 1000 40 2 200 10
./benchmark.sh ssmr m 90 1 0 5 1000 40 2 200 10
./benchmark.sh ssmr m 35 10 0 5 1000 40 2 200 10
./benchmark.sh ssmr m 10 50 0 5 1000 40 2 200 10
done

for i in $seq
do
./benchmark.sh calvin_less_recon m 300 0 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 290 0 1 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 220 0 10 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 60 0 50 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 5 0 100 5 1000 40 2 200 10

./benchmark.sh calvin_less_recon m 300 0 0 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 290 0 1 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 260 0 10 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 150 0 50 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 100 0 100 5 50000 40 2 200 10

./benchmark.sh calvin_less_recon m 280 1 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 255 1 1 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 170 1 10 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 40 1 50 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 4 1 100 5 1000 40 2 200 10

./benchmark.sh calvin_less_recon m 280 1 0 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 270 1 1 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 230 1 10 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 120 1 50 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 80 1 100 5 50000 40 2 200 10

./benchmark.sh calvin_less_recon m 210 10 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 185 10 1 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 140 10 10 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 30 10 50 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 2 10 100 5 1000 40 2 200 10

./benchmark.sh calvin_less_recon m 240 10 0 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 200 10 1 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 180 10 10 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 100 10 50 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 60 10 100 5 50000 40 2 200 10

./benchmark.sh calvin_less_recon m 160 50 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 140 50 1 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 120 50 10 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 20 50 50 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon m 1 50 100 5 1000 40 2 200 10

./benchmark.sh calvin_less_recon m 200 50 0 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 160 50 1 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 150 50 10 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 70 50 50 5 50000 40 2 200 10
./benchmark.sh calvin_less_recon m 30 50 100 5 50000 40 2 200 10
done
exit

./benchmark.sh spec_calvin m 1000 0 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 1000 0 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 600 1 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 600 1 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 300 10 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 300 10 100 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 200 50 0 5 1000 40 2 200 10
./benchmark.sh spec_calvin m 200 50 100 5 1000 40 2 200 10

exit
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
				./benchmark.sh spec_calvin m 80 50 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 90 50 $dep 5 $c 40 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 60 100 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 80 100 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 100 100 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 120 100 $dep 5 $c 40 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 110 10 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 130 10 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 150 10 $dep 5 $c 40 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 220 1 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 250 1 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 270 1 $dep 5 $c 40 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 600 0 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 800 0 $dep 5 $c 40 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 900 0 $dep 5 $c 40 1 10 2 200 false $pm
		done
	done
done
