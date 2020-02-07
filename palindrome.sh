#!/bin/sh

echo "Enter a number:"
read N
rev=0
num=$N
while(($num > 0))
do
	r=$((num % 10))
	rev=$(( (rev * 10) + r))
	num=$num/10
done

if(($N==$rev))
then
	echo $N number is palindrom
else 
	echo $N number is not palidrom
fi
