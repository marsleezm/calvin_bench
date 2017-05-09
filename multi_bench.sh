#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend

#./benchmark.sh spec_calvin t 1000 0 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 0.01 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 0.1 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 1 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 10 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 20 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 40 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 60 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 80 100 2 1000 10 1 10
#./benchmark.sh spec_calvin t 1000 100 100 2 1000 10 1 10

./benchmark.sh aggr_spec_calvin m 1500 40 10 2 1000 10 1 10
exit
./benchmark.sh aggr_spec_calvin m 1500 60 10 2 1000 10 1 10
./benchmark.sh aggr_spec_calvin m 1500 60 100 2 1000 10 1 10
exit

./benchmark.sh calvin m 500 0 0 2 1000 10 1 10
./benchmark.sh calvin m 500 0 10 2 1000 10 1 10
./benchmark.sh calvin m 500 0 100 2 1000 10 1 10
./benchmark.sh calvin m 500 1 0 2 1000 10 1 10
./benchmark.sh calvin m 500 1 10 2 1000 10 1 10
./benchmark.sh calvin m 500 1 100 2 1000 10 1 10
./benchmark.sh calvin m 500 10 0 2 1000 10 1 10
./benchmark.sh calvin m 500 10 10 2 1000 10 1 10
./benchmark.sh calvin m 500 10 100 2 1000 10 1 10
exit

./benchmark.sh calvin m 500 20 0 2 1000 10 1 10
./benchmark.sh calvin m 500 20 10 2 1000 10 1 10
./benchmark.sh calvin m 500 20 100 2 1000 10 1 10
./benchmark.sh calvin m 500 40 0 2 1000 10 1 10
./benchmark.sh calvin m 500 40 10 2 1000 10 1 10
./benchmark.sh calvin m 500 40 100 2 1000 10 1 10
./benchmark.sh calvin m 500 60 0 2 1000 10 1 10
./benchmark.sh calvin m 500 60 10 2 1000 10 1 10
./benchmark.sh calvin m 500 60 100 2 1000 10 1 10
./benchmark.sh calvin m 500 80 0 2 1000 10 1 10
./benchmark.sh calvin m 500 80 10 2 1000 10 1 10
./benchmark.sh calvin m 500 80 100 2 1000 10 1 10
./benchmark.sh calvin m 500 100 0 2 1000 10 1 10
./benchmark.sh calvin m 500 100 10 2 1000 10 1 10
./benchmark.sh calvin m 500 100 100 2 1000 10 1 10
exit
./benchmark.sh calvin m 1500 0 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 1 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 10 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 15 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 20 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 40 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 60 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 80 10 2 1000 10 1 10
./benchmark.sh calvin m 1500 100 10 2 1000 10 1 10

./benchmark.sh calvin t 1000 0 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 1 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 10 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 15 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 20 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 40 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 60 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 80 10 2 1000 10 1 10
./benchmark.sh calvin t 1000 100 10 2 1000 10 1 10
exit
./benchmark.sh spec_calvin m 1500 0 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 10 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 15 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 20 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 40 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 60 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 80 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 100 100 2 1000 10 1 10

./benchmark.sh spec_calvin t 1000 0 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 1 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 10 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 15 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 20 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 40 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 60 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 80 100 2 1000 10 1 10
./benchmark.sh spec_calvin t 1000 100 100 2 1000 10 1 10
#./benchmark.sh spec_calvin m 1500 10 100 2 1000 10 1 10
#./benchmark.sh spec_calvin m 1500 20 100 2 1000 10 1 10
#./benchmark.sh spec_calvin m 1500 50 100 2 1000 10 1 10
#./benchmark.sh spec_calvin m 1500 100 100 2 1000 10 1 10
exit
./benchmark.sh spec_calvin m 1500 0 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 10 100 2 1000 1 1 10
./benchmark.sh spec_calvin m 1500 10 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 15 100 2 1000 1 1 10
./benchmark.sh spec_calvin m 1500 15 100 2 1000 10 1 10

./benchmark.sh calvin m 1000 0 100 2 1000 1 1 10
./benchmark.sh calvin m 1500 1 100 2 1000 1 1 10
./benchmark.sh calvin m 1000 10 100 2 1000 1 1 10
./benchmark.sh calvin m 1500 15 100 2 1000 1 1 10
exit
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 1 10
exit
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 10 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 100 100 10
exit

./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 100 1 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 10 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 100 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 10 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 100 10 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 10 100 10
./benchmark.sh spec_calvin m 1500 1 100 2 1000 100 100 10
exit

./benchmark.sh spec_calvin m 1500 10 100 2 1000 100 1 1
./benchmark.sh spec_calvin m 1500 10 100 2 1000 1 100 1
./benchmark.sh spec_calvin m 1500 10 100 2 1000 1 1 100
exit

./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 10 100 2 1000 1 1 1

./benchmark.sh spec_calvin m 1500 15 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 15 100 2 1000 1 1 1

./benchmark.sh calvin m 1000 10 0 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 0 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 1 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 1 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 10 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 10 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 100 2 1000 1 1 1
./benchmark.sh calvin m 1000 10 100 2 1000 1 1 1

./benchmark.sh calvin m 1000 15 0 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 0 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 1 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 1 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 10 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 10 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 100 2 1000 1 1 1
./benchmark.sh calvin m 1000 15 100 2 1000 1 1 1
exit

./benchmark.sh spec_calvin t 300 0 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 0 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 0.01 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 0.01 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 0.1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 0.1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 10 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 15 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 300 15 0 2 1000 1 1 1 

./benchmark.sh calvin t 300 0 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 0 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 0.01 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 0.01 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 0.1 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 0.1 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 1 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 1 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 10 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 10 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 15 0 2 1000 1 1 1 
./benchmark.sh calvin t 300 15 0 2 1000 1 1 1 

./benchmark.sh spec_calvin m 1500 0 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 100 2 1000 1 1 1

./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.01 100 2 1000 1 1 1

./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0.1 100 2 1000 1 1 1

./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 1 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 10 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 1 100 2 1000 1 1 1
exit

./benchmark.sh spec_calvin m 1500 0 0 2 1000 1 1 1
./benchmark.sh spec_calvin m 1500 0 0 2 1000 1 1 1
exit

./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 5 1 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 10 1 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 20 1 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 40 1 1

./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 40 40 1
./benchmark.sh spec_calvin m 1500 0.01 0 2 1000 40 40 1

./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 5 1 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 10 1 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 20 1 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 40 1 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 40 40 1
./benchmark.sh spec_calvin m 1500 0.1 0 2 1000 40 40 1

./benchmark.sh spec_calvin m 1500 1 0 2 1000 5 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 10 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 20 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 40 40 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 5 5 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 10 10 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 20 20 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 40 40 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 40 40 1
exit
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 1 
exit
./benchmark.sh spec_calvin t 1500 0.01 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0.01 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0.1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0.1 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 1 
./benchmark.sh spec_calvin t 1500 0 0 2 1000 1 1 1 
exit
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
./benchmark.sh spec_calvin m 1500 1 0 2 1000 0 0 0
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 1
exit
./benchmark.sh spec_calvin m 1500 1 0 2 1000 2 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 4 1 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 2 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 4 1
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 2
./benchmark.sh spec_calvin m 1500 1 0 2 1000 1 1 4
exit
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
exit


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

