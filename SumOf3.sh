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
printf "$((a[$i])) "
done
