#!/bin/bash

DIR=$(dirname "$0")
source $DIR/common.sh

if [ $START = 0 ] && [ $PAUSE = 0 ]; then
	printf 00h:00m:00s
elif [ $PAUSE != 0 ]; then
	secs=$PAUSE
	printf '%02dh:%02dm:%02ds\n' $(($secs/3600)) $(($secs%3600/60)) $(($secs%60))
else
	secs=$(($NOW - $START))
	printf '%02dh:%02dm:%02ds\n' $(($secs/3600)) $(($secs%3600/60)) $(($secs%60))
fi
