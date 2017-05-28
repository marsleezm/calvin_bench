#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend

if [ 1 == 2 ]
then
seq="1 2"
cs="1000 50000"
deps="0 50 100"
dists="0 0.01 0.1 1 10 20"
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
			for dist in $dists
			do
				./benchmark.sh calvin_general_recon m 100 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh calvin_general_recon m 200 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh calvin_general_recon m 400 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh calvin_general_recon m 600 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh calvin_general_recon m 800 $dist $dep 5 $c 10 1 10 2 200
			done
		done
	done
done
fi

seq="1 2"
cs="1000 50000"
deps="0 100"
dists="0 0.01 0.1 1 10 20"
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
			for dist in $dists
			do
				./benchmark.sh spec_calvin m 100 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh spec_calvin m 200 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh spec_calvin m 400 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh spec_calvin m 600 $dist $dep 5 $c 10 1 10 2 200
				./benchmark.sh spec_calvin m 800 $dist $dep 5 $c 10 1 10 2 200
			done
		done
	done
done
