#!/bin/bash

DIR=$(dirname "$0")
source $DIR/common.sh

if [ $START = 0 ] && [ $PAUSE = 0 ]; then
	date +%s > $DIR/start.txt
	echo “Starting”
elif [ $START = 0 ] && [ $PAUSE != 0 ]; then
	echo `expr $NOW - $PAUSE` > $DIR/start.txt
	echo 0 > $DIR/pause.txt
	echo “Resuming”
elif [ $START != 0 ]; then
	echo `expr $NOW - $START` > $DIR/pause.txt
	echo 0 > $DIR/start.txt
	echo “Pausing”
fi
