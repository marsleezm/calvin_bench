#!/bin/bash

./multi_bench.sh
tar -zcvf myresults.tar.gz ./results
cp myresults.tar.gz ../public
