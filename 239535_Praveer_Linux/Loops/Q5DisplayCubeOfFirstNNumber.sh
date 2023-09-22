#!/bin/bash
read  -p "Enter the number for a cube " n
for ((i=1;i<=n;i++))
do
	a=$((i*i*i))
	#echo "Cube of $i is $a"
	echo "Cube of ${i} is $a"
done

