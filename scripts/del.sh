#!/bin/bash

directory=$1
size=$2

if [ -z $size ]; then 
	echo You must provide a size. use "\"op.sh help \"" to see the commands.
    	exit 3
fi

find $directory -size +$size -delete 2>/dev/null || echo Size is not valid.


