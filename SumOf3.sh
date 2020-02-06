#!/bin/sh
declare -A arr[]
echo Enter a Length of array
read N
echo Enter values of the  array 
for(( i=0; i<$N; i++ ))
do
	read m
	arr[i]=$m
done
for(( i=0; i < $N-2; i++ ))
do
	for(( j=i+1; i < $N-1; j++ ))
	do
		for(( k=j+1; k < $N; k++ ))
		do
			if(( $((arr[i]+arr[j]+arr[k]))==0 ))
			then
				echo $((arr[i])) $((arr[j])) $((arr[k]))
			else
				echo "No three elements adds to zero"
			fi
		done
	done
done
