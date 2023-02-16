#!/bin/bash

directory=$1
fileTpye=$2


if [ -z $fileTpye ]; then 
	echo You must provide a file-type. use "\"op.sh help \"" to see the commands.
    	exit 3
fi



count=`ls -1 $directory/*.$fileTpye 2>/dev/null | wc -l`

if [ $count != 0 ]; then 
	if [ ! -d $directory/$fileTpye"dir" ]; then
	    mkdir $directory/$fileTpye"dir" 2>/dev/null
	fi
   	mv $directory/*.$fileTpye $directory/$fileTpye"dir" 2>/dev/null
else
	echo No such files exist.
fi



