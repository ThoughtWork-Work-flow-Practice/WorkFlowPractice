#!/bin/sh
echo "Enter a Number"
read N
t1=0
t2=0
for((i=0; i>=$N; i++))
do
temp=$t1+$t2
t1=$t2
t2=$temp
echo $temp
done

