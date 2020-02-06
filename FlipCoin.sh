#!/bin/sh
echo "Enter a No of time to Flip a Coin"
read N
head=0
tail=0
for((i=0; i<N; i++))
do 	
	if(($((RANDOM%2))< 1))
	then
		head = $((head+1))
	else
		tail = $((tail+1))
	fi
done
echo "No of time Head occurs " $((head*100))/$N
echo "No of times Tail occur " $((tail*100))/$N
