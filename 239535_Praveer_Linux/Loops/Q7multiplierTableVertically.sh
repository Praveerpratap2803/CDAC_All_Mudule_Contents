#!/bin/bash
read -p "Enter the table number starting from " num
for i in {1..10}
do
	for((j=1;j<=$num;j++))
	do
		echo -n "$j X $i = $((i*j)), "
	done
	echo " "
done
