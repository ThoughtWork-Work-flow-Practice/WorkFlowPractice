#!/bin/sh
echo "Enter a Number"
read N
t1=0
t2=1
echo $t1
echo $t2
for((i=1; i<=$N; i++))
do
	echo $((t1+t2)) " "
	t1=$t2
	t2=$((t1+t2))
done

