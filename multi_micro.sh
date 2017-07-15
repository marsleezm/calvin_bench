#!/bin/bash

# Folder, bench type, m_batch, dist_p, dep_p, index_num, index_size, max_sc, max_pend, max_suspend
seq="1 2"
cs="1000 50000"
#deps="0 50 100"
deps="100 50 10 1 0"
for s in $seq
do
	for c in $cs 
	do
		for dep in $deps
		do
				div=$(( dep / 2 ))
				div=$(( div > 0 ? div : 1 ))
				./benchmark.sh calvin_less_recon m $((100/div)) 100 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((150/div)) 100 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((200/div)) 100 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((250/div)) 100 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((300/div)) 100 $dep 5 $c 10 1 10 2 200 false

				./benchmark.sh calvin_less_recon m $((50/div > 0 ? 50/div : 1)) 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((100/div)) 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((150/div)) 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((200/div)) 1 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((300/div)) 1 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh calvin_less_recon m 100 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 200 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 250 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 300 50 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 400 50 $dep 5 $c 10 1 10 2 200 false
			
				./benchmark.sh calvin_less_recon m $((50/div  > 0 ? 50/div : 1)) 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((100/div)) 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((200/div)) 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((300/div)) 0 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((400/div)) 0 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh calvin_less_recon m 100 0.01 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 200 0.01 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 400 0.01 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 600 0.01 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 800 0.01 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh calvin_less_recon m 100 0.1 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 200 0.1 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 400 0.1 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 550 0.1 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 700 0.1 $dep 5 $c 10 1 10 2 200 false


				./benchmark.sh calvin_less_recon m $((50/div > 0 ? 50/div : 1)) 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((100/div)) 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((150/div)) 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((200/div)) 10 $dep 5 $c 10 1 10 2 200 false
				./benchmark.sh calvin_less_recon m $((250/div)) 10 $dep 5 $c 10 1 10 2 200 false

				#./benchmark.sh calvin_less_recon m 100 20 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 200 20 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 350 20 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 450 20 $dep 5 $c 10 1 10 2 200 false
				#./benchmark.sh calvin_less_recon m 550 20 $dep 5 $c 10 1 10 2 200 false


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

				#./benchmark.sh spec_calvin m 10 50 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 20 50 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 25 50 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 30 50 $dep 5 $c 20 1 10 2 200 false
				#./benchmark.sh spec_calvin m 35 50 $dep 5 $c 20 1 10 2 200 false

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

