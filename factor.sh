\#!/bin/sh

factor 34
echo $factor


echo "Enter a no:"
read num
for(( i=2; i<=num; i++));do
while [ $((num%$i)) == 0 ];do
	echo "Prime factor are: "$i
	num=$((num/$i))
	done
done

echo Enter a Number: 
read num 
val=1 
for((i=1; i<=$num; i++)) 
do 
val=$((val*2)) 
done
echo Power of 2 is: $val
