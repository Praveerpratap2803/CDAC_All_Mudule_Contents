#!/bin/bash
read -p "Enter the input " n
count=1
for ((i=1;i<=n;i++))
do
	for ((j=1;j<=i;j++))
	do
		echo -n "$count"
		count=$((count+1))
	done
echo ""

done
