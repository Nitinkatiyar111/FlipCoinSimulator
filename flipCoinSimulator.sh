#!/bin/bash -x
tail=1
head=0
win=0
countTail=0
countHead=0
		while [ $win -lt 1 ]
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
     if [ $countTail -eq 21 ] ||  [ $countHead -eq 21 ]
	then
        if [ $countTail -gt $countHead ]
   then
         echo "tail won"
			winBy=`expr $countTail - $countHead`
else
         echo "head won"
         winBy=`expr $countHead - $countTail`
fi
			win=`expr $win + 1`
fi
done
echo "tail :$countTail"
echo "head :$countHead"
echo "$winBy"
