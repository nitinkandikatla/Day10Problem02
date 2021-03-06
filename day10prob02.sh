#! /bin/bash
echo "Flip Coin Simulator"
head=0
tail=0
while [[ $head -lt 21 && $tail -lt 21 ]]
do
	randomValue=$(($RANDOM%2+1));
	if [ $randomValue -eq 1 ]
	then
        	((head++))
	else
        	((tail++))
	fi
done
if [ $head -eq $tail ]
then
	echo "Tie"
	while [ true ]
	do
		ran=$(($RANDOM%2+1));
		if [ $ran -eq 1 ]
		then
			((head++))
		else
			((tail++))
		fi
		d=$(($head-$tail))
		d1=$(($tail-$head))
		if [ $d -ge 2 ] || [ $d1 -ge 2 ]
		then
			echo "Head;$head Tail:$tail"
		break
		else
			continue
		fi
	done
elif [ $head -gt $tail ]
then
	echo "Head won"
	a=$(($head-$tail))
	echo "Head won by $a flips"
else
	echo "Tail Won"
	b=$(($tail-$head))
	echo "Tail won by $b flips"
fi
