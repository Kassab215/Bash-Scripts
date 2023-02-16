#!/bin/bash

directory=$1
regex=$2
if [ -z $regex ]; then 
	echo You must provide a regex. use "\"op.sh help \"" to see the commands.
    	exit 3
fi

grep -o -nr $regex $directory | wc -l 2>/dev/null || echo Regex is not valid.

