#!/bin/bash -x

	tail=1
	head=0
	flip=0
	countTail=0
	countHead=0
		while [ $flip -le 10 ]
 	do
		random=$((RANDOM % 2 ))
		if [ $random  -eq 1 ]
	then
		echo "tail"
      countTail=`expr $countTail + 1`
	else
		echo "head"
      countHead=`expr $countHead + 1`
	fi
    flip=`expr $flip + 1`
done
echo "tail :$countTail"
echo "head :$countHead"

