#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
./benchmark.sh calvin_less_recon t 40 10 0 5 1000 40 2 200 90
./benchmark.sh calvin_less_recon t 40 10 0 5 1000 40 2 200 90
./benchmark.sh calvin_less_recon t 40 10 0 5 1000 40 2 200 90

./benchmark.sh calvin_less_recon t 20 10 0 5 1000 40 2 200 50
./benchmark.sh calvin_less_recon t 20 10 0 5 1000 40 2 200 50
./benchmark.sh calvin_less_recon t 20 10 0 5 1000 40 2 200 50

./benchmark.sh calvin_less_recon t 13 10 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon t 13 10 0 5 1000 40 2 200 10
./benchmark.sh calvin_less_recon t 13 10 0 5 1000 40 2 200 10
exit

seq="1"
for s in $seq
do
	./benchmark.sh ssmr t 15 10 0 5 1000 40 2 200 90
	./benchmark.sh ssmr t 15 10 0 5 1000 40 2 200 90
	./benchmark.sh ssmr t 15 10 0 5 1000 40 2 200 90

	./benchmark.sh ssmr t 12 10 0 5 1000 40 2 200 50
	./benchmark.sh ssmr t 12 10 0 5 1000 40 2 200 50
	./benchmark.sh ssmr t 12 10 0 5 1000 40 2 200 50

	./benchmark.sh ssmr t 13 10 0 5 1000 40 2 200 10
	./benchmark.sh ssmr t 13 10 0 5 1000 40 2 200 10
	./benchmark.sh ssmr t 13 10 0 5 1000 40 2 200 10
done


for s in $seq
do
	./benchmark.sh spec_calvin t 50 10 0 5 1000 40 2 200 90
	./benchmark.sh spec_calvin t 50 10 0 5 1000 40 2 200 90
	./benchmark.sh spec_calvin t 50 10 0 5 1000 40 2 200 90
	./benchmark.sh spec_calvin t 45 10 0 5 1000 40 2 200 90
	./benchmark.sh spec_calvin t 45 10 0 5 1000 40 2 200 90
	./benchmark.sh spec_calvin t 45 10 0 5 1000 40 2 200 90

	./benchmark.sh spec_calvin t 65 10 0 5 1000 40 2 200 50
	./benchmark.sh spec_calvin t 65 10 0 5 1000 40 2 200 50
	./benchmark.sh spec_calvin t 65 10 0 5 1000 40 2 200 50
	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 50
	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 50
	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 50

	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 10
	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 10
	./benchmark.sh spec_calvin t 60 10 0 5 1000 40 2 200 10
	./benchmark.sh spec_calvin t 70 10 0 5 1000 40 2 200 10
	./benchmark.sh spec_calvin t 70 10 0 5 1000 40 2 200 10
	./benchmark.sh spec_calvin t 70 10 0 5 1000 40 2 200 10
done


