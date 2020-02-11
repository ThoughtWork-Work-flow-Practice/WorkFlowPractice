#!/bin/sh
check()
{
for((i=0; i<3; i++))
do
	if(( arr[{$i},{0}] == arr[{$i},{1}] && arr[{$i},{1}] == arr[{$i},{2}] ))
	then
	return 1
	elif(( arr[{0},{$i}] == arr[{1},{$i}] && arr[{1},{$i}] == arr[{2},{$i}]))
	then
	return 1
	fi
done
	if((arr[{0},{0}] == arr[{1},{1}] && arr[{1},{1}] == arr[{2},{2}]))
	then
	return 1
	elif((arr[{0},{2}] == arr[{1},{1}] && arr[{1},{1}] == arr[{2},{0}]))
	then
	return 1
	fi
return 0
}
game()
{
	declare -A arr
		for(( i=0; i<3; i++ ))
		do
			for(( j=0; j<3; j++ ))
			do
			arr[{$i},{$j}]= 9
			done
		done
count=9
#r=$(($RANDOM%3))
flag=1
	while(( $count > 0 ))
	do
                count=$((count-1))
		r1=$(($RANDOM%3))
		r2=$(($RANDOM%3))
	        if(( $flag==1 ))
			then
			x=$r1
			y=$r2
				if(( arr[{$x},{$y}] != 9 ))
				then
				count=$((count+1))
				else
				echo "Computer chance"
				arr[{$x},{$y}]=0
				check 0 arr
				ret=$?
					for((i=0; i<3; i++ ))
					do
        					for((j=0; j<3; j++ ))
        					do
        					printf "${arr[{$i},{$j}]}  "
        					done
					echo
					done
					if(( $ret==1 ))
					then
						echo "Computer Wins"
					break
					fi
				flag=0
				fi
		elif(( $flag==0 ))
			echo "Enter the index of row and column"
			read x y
				if(( arrr[{$x},{$y}] != 9 ))
				then
					echo "Place is already occupied"
					count=$(($count+1))
				else
					arr[{$x},{$y}]=1
					for((i=0; i<3; i++ ))
					do
        					for((j=0; j<3; j++ ))
        					do
        						printf "${arr[{$i},{$j}]}  "
        					done
					echo
					done
					check 1 arr
					ret=$?
					if(( $ret==1 ))
					then
						echo "User Wins"
						break
					fi
				fi
				echo ""
		fi
	done
if(( $count == -1 ))
then
	echo "Game Draw"
fi
}
game
