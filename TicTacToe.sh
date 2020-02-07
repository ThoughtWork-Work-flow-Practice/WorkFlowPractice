#!/bin/sh

declare -a arr
arr=('0' '1' '2' '3' '4' '5' '6' '7' '8' '9')
player1=1
PrintBoard()
{
	echo "    |   |    "
	echo "  ${arr[1]} | ${arr[2]} | ${arr[3]} "
	echo " ___|___|___"
	echo "    |   |   "
	echo "  ${arr[4]} | ${arr[5]} | ${arr[6]} "
	echo " ___|___|___"
	echo "    |   |   "
	echo "  ${arr[7]} | ${arr[8]} | ${arr[9]} "
	echo "    |   |   "
}
WinCondition($1 )
{
	if(( ${arr[1]}==${arr[2]} &&  ${arr[2]}==${arr[3]} ))
	then 
		return 1
	elif(( ${arr[4]}==${arr[5]} &&  ${arr[5]}==${arr[6]} ))
	then
		return 1
	elif(( ${arr[7]}==${arr[8]} &&  ${arr[8]}==${arr[9]} ))
	then
		return 1
	elif(( ${arr[1]}==${arr[4]} &&  ${arr[4]}==${arr[7]} ))
        then
                return 1
	elif(( ${arr[2]}==${arr[5]} &&  ${arr[5]}==${arr[8]} ))
        then
                return 1
	elif(( ${arr[3]}==${arr[6]} &&  ${arr[6]}==${arr[9]} ))
        then
                return 1
	elif(( ${arr[1]}==${arr[5]} &&  ${arr[5]}==${arr[9]} ))
        then
                return 1
	elif(( ${arr[3]}==${arr[5]} &&  ${arr[5]}==${arr[7]} ))
        then
                return 1
	elif(( ${arr[1]}!='1' && ${arr[2]}!='2' && ${arr[3]}!='3' && ${arr[4]}!='4' && ${arr[5]}!='5' && ${arr[6]}!='6' && ${arr[7]}!='7' && ${arr[8]}!='8' && ${arr[9]}!='9'))
	then
		return 2
	else
		return 0
	fi
}
WinCondition
echo $?
