#!/bin/bash -x

	tail=1
	head=0
		random=$((RANDOM % 2 ))
		if [ $random  -eq 1 ]
	then
		echo "tail"
	else
		echo "head"
	fi
