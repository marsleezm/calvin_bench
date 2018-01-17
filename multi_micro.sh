#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
dep=0
c=10
pm=false
./benchmark.sh spec_calvin m 20 50 $dep 5 $c 20 1 10 2 200 false $pm

if [ 1 == 2 ]
then
seq="1"
cs="1000 50000"
deps="100"
parallel_multi="false"
for pm in $parallel_multi
do
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
				./benchmark.sh spec_calvin m 20 50 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 30 50 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 40 50 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 50 50 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 60 50 $dep 5 $c 20 1 10 2 200 false $pm

				if [ 1 == 2 ]
				then
				./benchmark.sh spec_calvin m 10 100 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 15 100 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 20 100 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 24 100 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 27 100 $dep 5 $c 20 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 30 10 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 50 10 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 70 10 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 90 10 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 110 10 $dep 5 $c 20 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 100 1 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 140 1 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 180 1 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 220 1 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 250 1 $dep 5 $c 20 1 10 2 200 false $pm

				./benchmark.sh spec_calvin m 200 0 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 300 0 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 400 0 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 600 0 $dep 5 $c 20 1 10 2 200 false $pm
				./benchmark.sh spec_calvin m 800 0 $dep 5 $c 20 1 10 2 200 false $pm
				fi
		done
	done
done
done
fi


seq="1 2"
#deps="90 50 10"
deps="10 50 90"
for s in $seq
do
		for dep in $deps
		do
				./benchmark.sh calvin_less_recon m 1 0 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 3 0 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 5 0 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 6 0 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 8 0 $dep 5 1000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 30 0 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 40 0 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 50 0 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 60 0 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 70 0 $dep 5 50000 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 40 0 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 50 0 $dep 5 $c 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 8 1 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 10 1 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 12 1 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 14 1 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 20 1 $dep 5 1000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 30 1 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 40 1 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 50 1 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 60 1 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 70 1 $dep 5 50000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 2 10 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 4 10 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 6 10 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 8 10 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 10 10 $dep 5 1000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 30 10 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 40 10 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 50 10 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 60 10 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 70 10 $dep 5 50000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 4 50 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 8 50 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 12 50 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 16 50 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 20 50 $dep 5 1000 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m 40 50 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 60 50 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 70 50 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 80 50 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 120 50 $dep 5 50000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 140 50 $dep 5 50000 10 1 10 2 200 false

				if [ 1 == 2 ]
				then
				./benchmark.sh calvin_less_recon m 5 100 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 10 100 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 15 100 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 20 100 $dep 5 1000 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m 25 100 $dep 5 1000 10 1 10 2 200 false
				fi

				#./benchmark.sh calvin_less_recon m 50 100 $dep 5 50000 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 55 100 $dep 5 50000 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 60 100 $dep 5 50000 10 1 10 2 200 false

				#./benchmark.sh calvin_less_recon m 50 1 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 60 1 $dep 5 $c 10 1 10 2 200 false


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

				./benchmark.sh spec_calvin m 30 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 40 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 60 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 80 10 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 100 10 $dep 5 $c 20 1 10 2 200 false

				./benchmark.sh spec_calvin m 100 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 120 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 160 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 180 1 $dep 5 $c 20 1 10 2 200 false
				./benchmark.sh spec_calvin m 200 1 $dep 5 $c 20 1 10 2 200 false

				#./benchmark.sh spec_calvin m 100 0.1 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 200 0.1 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 300 0.1 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 400 0.1 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 500 0.1 $dep 5 $c 20 1 10 2 200 false

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
