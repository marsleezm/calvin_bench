#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
seq="1 2"
for i in $seq
do
./benchmark.sh spec_calvin m 450 1 0 5 50000 200 2 200 10
./benchmark.sh spec_calvin m 400 10 0 5 50000 300 2 200 10
./benchmark.sh spec_calvin m 300 30 0 5 50000 200 2 200 10
./benchmark.sh spec_calvin m 250 60 0 5 50000 150 2 200 10
./benchmark.sh spec_calvin m 100 100 0 5 50000 100 2 200 10

#./benchmark.sh spec_calvin m 300 1 0 5 50000 200 4 200 10
#./benchmark.sh spec_calvin m 250 10 0 5 50000 300 4 200 10
#./benchmark.sh spec_calvin m 200 30 0 5 50000 200 4 200 10
#./benchmark.sh spec_calvin m 150 60 0 5 50000 150 4 200 10
#./benchmark.sh spec_calvin m 80 100 0 5 50000 100 4 200 10

./benchmark.sh spec_calvin m 150 1 0 5 50000 150 8 200 10
./benchmark.sh spec_calvin m 90 10 0 5 50000 150 8 200 10
./benchmark.sh spec_calvin m 45 30 0 5 50000 100 8 200 10
./benchmark.sh spec_calvin m 23 60 0 5 50000 150 8 200 10
./benchmark.sh spec_calvin m 15 100 0 5 50000 100 8 200 10
done

#SSR
if [ 1 == 2 ]
then
seq="1 2 3"
for i in $seq
do
./benchmark.sh ssmr m 300 1 0 5 50000 200 2 200 10
./benchmark.sh ssmr m 70 10 0 5 50000 70 2 200 10
./benchmark.sh ssmr m 40 30 0 5 50000 40 2 200 10
./benchmark.sh ssmr m 10 60 0 5 50000 20 2 200 10
./benchmark.sh ssmr m 6 100 0 5 50000 20 2 200 10

./benchmark.sh ssmr m 150 1 0 5 50000 200 4 200 10
./benchmark.sh ssmr m 25 10 0 5 50000 100 4 200 10
./benchmark.sh ssmr m 9 30 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 5 60 0 5 50000 40 4 200 10
./benchmark.sh ssmr m 3 100 0 5 50000 40 4 200 10

./benchmark.sh ssmr m 95 1 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 11 10 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 4 30 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 3 60 0 5 50000 40 8 200 10
./benchmark.sh ssmr m 2 100 0 5 50000 40 8 200 10
done
fi

#CONFIRM
seq="1 2 3"
for i in $seq
do
#./benchmark.sh calvin m 300 1 0 5 50000 50 2 200 10
#./benchmark.sh calvin m 160 10 0 5 50000 100 2 200 10
#./benchmark.sh calvin m 100 30 0 5 50000 80 2 200 10
#./benchmark.sh calvin m 70 60 0 5 50000 50 2 200 10
#./benchmark.sh calvin m 40 100 0 5 50000 40 2 200 10

#./benchmark.sh calvin m 300 1 0 5 50000 40 4 200 10
#./benchmark.sh calvin m 100 10 0 5 50000 40 4 200 10
#./benchmark.sh calvin m 100 30 0 5 50000 40 4 200 10
#./benchmark.sh calvin m 80 60 0 5 50000 40 4 200 10
#./benchmark.sh calvin m 80 100 0 5 50000 40 4 200 10

./benchmark.sh calvin m 100 1 0 5 50000 50 8 200 10
./benchmark.sh calvin m 12 10 0 5 50000 40 8 200 10
./benchmark.sh calvin m 4 30 0 5 50000 40 8 200 10
./benchmark.sh calvin m 2 60 0 5 50000 40 8 200 10
./benchmark.sh calvin m 1 100 0 5 50000 40 8 200 10
done

