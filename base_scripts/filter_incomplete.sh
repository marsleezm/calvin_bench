#!/bin/bash

for f in `ls -d $1/*`
do
	num=`ls $f/*output.txt | wc -l`
	if [ $num -ne 8 ]
	then
		echo $f $num
	fi
done
