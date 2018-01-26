#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
scales="4 8 12 16 20"
seq="1 2 3"
for i in $seq
do
for s in $scales
do
	./generate_scale.sh $s > dist-deploy.conf
	cat dist-deploy.conf
	cp dist-deploy.conf ../spec_calvin/
	./benchmark.sh spec_calvin t 100 10 0 5 1000 40 2 200 90 0 $s
	./benchmark.sh spec_calvin t 100 10 0 5 1000 40 2 200 50 0 $s
	./benchmark.sh spec_calvin t 100 10 0 5 1000 40 2 200 10 0 $s
done
done
