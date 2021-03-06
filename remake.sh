#!/bin/bash

Folder=$1
Branch=$2
AllNodes=`cat nodes`
./base_scripts/parallel_command.sh "$AllNodes" "cd spec_calvin && rm core && cd ../calvin/ && rm core"
Command1="cd ./$Folder && git reset --hard && git fetch && git checkout $2 && git pull"
Command2="cd ./$Folder/src && make clean && make -j8"
./base_scripts/parallel_command.sh "$AllNodes" "$Command1"	
./base_scripts/parallel_command.sh "$AllNodes" "$Command2"	
