#!/bin/sh

echo "Enter a Number:"
read N
Sum=0
num=$N
while(($N > 0))
do

r=$(($N % 10))
Sum=$(($Sum + $r*$r*$r))
N=$(($N/10))
done
if(($num==$Sum))
then 
echo  $Sum "Is a amstrong number"
else
echo $Sum "Is not a amstrong Number"
fi
