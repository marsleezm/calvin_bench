#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
./benchmark.sh spec_calvin m 1500 0 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 1 2 1000 1 1 1

./benchmark.sh spec_calvin m 1500 10 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin m 1500 10 0 2 1000 10 1 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 100 1 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 10
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 100
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 10 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 100 1

./benchmark.sh calvin m 1500 0 0 2 1000
./benchmark.sh calvin m 1500 0 1 2 1000
./benchmark.sh calvin m 1500 0 10 2 1000
./benchmark.sh calvin m 1500 1 0 2 1000
./benchmark.sh calvin m 1500 1 1 2 1000
./benchmark.sh calvin m 1500 1 10 2 1000
./benchmark.sh calvin m 1500 10 0 2 1000
./benchmark.sh calvin m 1500 10 1 2 1000
./benchmark.sh calvin m 1500 10 10 2 1000


#### TPCC
./benchmark.sh calvin t 1500 0
./benchmark.sh calvin t 1500 1
./benchmark.sh calvin t 1500 10

./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 10 1 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 10 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 10 

./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 10 1 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 10 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 1 10 

./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 10 1 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 10 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 1 10 

exit

./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 2 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 10 1 

./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 2 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 10 1 
exit
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 100 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 100 1 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 100 100 1 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 1 100
./benchmark.sh spec_calvin t 1500 1 0 2 1000 1 100 100
./benchmark.sh spec_calvin t 1500 1 0 2 1000 100 1 100 
./benchmark.sh spec_calvin t 1500 1 0 2 1000 100 100 100 

./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 100 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 100 1 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 100 100 1 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 1 100
./benchmark.sh spec_calvin t 1500 10 0 2 1000 1 100 100
./benchmark.sh spec_calvin t 1500 10 0 2 1000 100 1 100 
./benchmark.sh spec_calvin t 1500 10 0 2 1000 100 100 100 

./benchmark.sh spec_calvin t 1500 100 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 100 0 2 1000 1 100 1 
./benchmark.sh spec_calvin t 1500 100 0 2 1000 100 1 1 
./benchmark.sh spec_calvin t 1500 100 0 2 1000 100 100 1 
./benchmark.sh spec_calvin t 1500 100 0 2 1000 1 1 100
./benchmark.sh spec_calvin t 1500 100 0 2 1000 1 100 100
./benchmark.sh spec_calvin t 1500 100 0 2 1000 100 1 100 
./benchmark.sh spec_calvin t 1500 100 0 2 1000 100 100 100 

