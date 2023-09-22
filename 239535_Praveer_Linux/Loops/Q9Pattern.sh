#!/bin/bash
read -p "Enter the input n " n
for ((i=1;i<=n;i++))
do
	for ((j=1;j<i+1;j++))
	do
		echo -n "*"
	done
	echo ""

done
