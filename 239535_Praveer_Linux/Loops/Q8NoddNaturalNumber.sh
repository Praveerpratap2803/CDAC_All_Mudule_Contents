#!/bin/bash
read -p "Enter the n terms of odd natural number " num
sum=0


#for ((i=1;i<=num;i++))
#do
#	a=$((2*i-1))
#	sum=$((sum+a))
#	echo "$a"
#done
#echo "$sum"


#for ((i=0;i<=$(( 2*$num ));i++))
#do
#	if [[ $((i%2)) != 0 ]]
#	then
#		echo "$i"
#		sum=$((sum+i))
#	fi
#done	
#echo "$sum"

for ((i=0;i<=$(expr 2*$num );i++))
do
	if [[ $(( i%2)) != 0 ]]
	then
		echo "$i"
		sum=$((sum+i))
	fi
done	
echo "$sum"
	
