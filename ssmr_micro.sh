#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
dep=0
c=1000
./benchmark.sh ssmr m 12 50 $dep 5 $c 10 1 10 2 200 false
./benchmark.sh ssmr m 13 50 $dep 5 $c 10 1 10 2 200 false
#./benchmark.sh ssmr m 4 50 $dep 5 $c 10 1 10 2 200 false
#./benchmark.sh ssmr m 4 50 $dep 5 $c 10 1 10 2 200 false
#./benchmark.sh ssmr m 6 50 $dep 5 $c 10 1 10 2 200 false
#./benchmark.sh ssmr m 8 50 $dep 5 $c 10 1 10 2 200 false
exit

seq="1 2"
cs="1000"
#deps="0 50 100"
deps="0"
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
				./benchmark.sh ssmr m 80 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 160 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 240 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 320 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 400 0 $dep 5 $c 10 1 10 2 200 false

				./benchmark.sh ssmr m 30 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 60 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 90 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 120 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 150 1 $dep 5 $c 10 1 10 2 200 false

				./benchmark.sh ssmr m 10 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 20 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 30 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 40 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 50 10 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh ssmr m 6 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 12 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 18 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 24 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 30 50 $dep 5 $c 10 1 10 2 200 false

				./benchmark.sh ssmr m 4 50 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 8 50 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 12 50 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 16 50 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 20 50 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh ssmr m 24 50 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh ssmr m 2 100 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 4 100 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 6 100 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 8 100 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh ssmr m 10 100 $dep 5 $c 10 1 10 2 200 false
		done
	done
done
exit

seq="1 2"
cs="1000 50000"
deps="100"
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
				./benchmark.sh spec_calvin m 10 100 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 15 100 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 20 100 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 23 100 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 25 100 $dep 5 $c 20 1 10 2 200 false

				./benchmark.sh spec_calvin m 10 50 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 20 50 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 25 50 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 30 50 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 35 50 $dep 5 $c 20 1 10 2 200 false

				#./benchmark.sh spec_calvin m 40 20 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 50 20 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 60 20 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 70 20 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 80 20 $dep 5 $c 20 1 10 2 200 false

				./benchmark.sh spec_calvin m 10 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 20 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 30 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 40 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 50 10 $dep 5 $c 20 1 10 2 200 false

				./benchmark.sh spec_calvin m 30 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 60 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 90 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 120 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 150 1 $dep 5 $c 20 1 10 2 200 false

				#./benchmark.sh spec_calvin m 200 0.01 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 300 0.01 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 400 0.01 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 500 0.01 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 600 0.01 $dep 5 $c 20 1 10 2 200 false

				./benchmark.sh spec_calvin m 200 0 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 300 0 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 400 0 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 600 0 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 800 0 $dep 5 $c 20 1 10 2 200 false
		done
	done
done
