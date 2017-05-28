#!/bin/bash

for f in `ls -d $1/2*`
do
	num=`cat $f/output | grep "Completed 0 txns/sec, 0 t" | wc -l`
	if [ $num -gt 50 ]
	then
		#rm -r $f
		echo $f $num
	fi
done
