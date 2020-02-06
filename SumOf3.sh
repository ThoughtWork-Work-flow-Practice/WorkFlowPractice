#!/bin/sh
echo Enter a Length of array
read num
n=$num
declare -A a
for((i=0; i<n; i++))
do
read a[$i]
done
for((i=0; i<n; i++))
do
echo "Enter value of Integer Array:"
printf "$((a[$i])) "
done
for((i=0; i<n-2; i++))
do
	for((j=i+1; i<n-1; j++))
	do
		for((k=j+1; k<n; k++))
		do
			if(($((a[$i] + a[$j] + a[$k]))))
			then
