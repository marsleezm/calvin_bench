#!/bin/bash

Folder=$1
AllNodes=`cat nodes`
Command1="cd ./$Folder && git reset --hard && git fetch && git pull"
Command2="cd ./$Folder/src && make -j8"
./base_scripts/parallel_command.sh "$AllNodes" "$Command1"	
./base_scripts/parallel_command.sh "$AllNodes" "$Command2"	
