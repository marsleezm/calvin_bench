#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend

#SSR
seq="1 2 3"
for i in $seq
do
./benchmark.sh ssmr m 190 1 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 100 10 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 100 20 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 50 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 70 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 100 0 5 50000 40 2 200 10

./benchmark.sh ssmr m 190 1 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 100 10 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 100 20 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 50 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 70 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 100 0 5 50000 40 4 200 10

./benchmark.sh ssmr m 190 1 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 100 10 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 100 20 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 80 50 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 80 70 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 80 100 0 5 50000 40 8 200 10
done

#CONFIRM
seq="1 2 3"
for i in $seq
do
./benchmark.sh calvin m 190 1 0 5 50000 40 2 200 10
./benchmark.sh calvin m 100 10 0 5 50000 40 2 200 10
./benchmark.sh calvin m 100 20 0 5 50000 40 2 200 10
./benchmark.sh calvin m 80 50 0 5 50000 40 2 200 10
./benchmark.sh calvin m 80 70 0 5 50000 40 2 200 10
./benchmark.sh calvin m 80 100 0 5 50000 40 2 200 10

./benchmark.sh calvin m 190 1 0 5 50000 40 4 200 10
./benchmark.sh calvin m 100 10 0 5 50000 40 4 200 10
./benchmark.sh calvin m 100 20 0 5 50000 40 4 200 10
./benchmark.sh calvin m 80 50 0 5 50000 40 4 200 10
./benchmark.sh calvin m 80 70 0 5 50000 40 4 200 10
./benchmark.sh calvin m 80 100 0 5 50000 40 4 200 10

./benchmark.sh calvin m 190 1 0 5 50000 40 8 200 10
./benchmark.sh calvin m 100 10 0 5 50000 40 8 200 10
./benchmark.sh calvin m 100 20 0 5 50000 40 8 200 10
./benchmark.sh calvin m 80 50 0 5 50000 40 8 200 10
./benchmark.sh calvin m 80 70 0 5 50000 40 8 200 10
./benchmark.sh calvin m 80 100 0 5 50000 40 8 200 10
done

seq="1 2 3"
for i in $seq
do
./benchmark.sh ssmr m 190 1 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 100 10 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 100 20 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 50 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 70 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 80 100 0 5 50000 40 2 200 10

./benchmark.sh ssmr m 190 1 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 100 10 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 100 20 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 50 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 70 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 80 100 0 5 50000 40 4 200 10

./benchmark.sh ssmr m 100 1 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 50 10 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 40 20 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 30 50 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 20 70 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 10 100 0 5 50000 40 8 200 10
done
