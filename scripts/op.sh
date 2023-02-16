#!/bin/bash

command=$1
directory=$2
args=$3

if [ -z $command ]; then 
	echo You must provide a command. use "\"op.sh help \"" to see the commands.
    	exit 3
fi
	
if [ $command == help ]; then
	bash help.sh
	exit 3
fi

if [ -z $directory ]; then 
	echo You must provide a directory. use "\"op.sh help \"" to see the commands.
    	exit 3
fi

if [ ! -d $directory ]; then
    	echo No such directory. use "\"op.sh help \"" to see the commands.
    	exit 3
fi

case $command in

	ana)
		bash ana.sh $directory $args;;
		
	del)
		bash del.sh $directory $args;;
		
	arr)
		bash arr.sh $directory $args;;
		
		
		
	*)
		echo Wrong command, use "\"op.sh help\"" to see the commands.;;
esac
