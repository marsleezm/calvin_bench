#!/bin/bash


seq="1 2 3"
deps="90 50 10"
dists="0 1 10 50"
for s in $seq
do
for dep in $deps
do
for dist in $dists
do
./benchmark.sh calvin_less_recon m 2 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 4 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 6 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 8 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 10 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 12 $dist $dep 5 2000 10 1 10 2 200 false
./benchmark.sh calvin_less_recon m 14 $dist $dep 5 2000 10 1 10 2 200 false
done
done
done
