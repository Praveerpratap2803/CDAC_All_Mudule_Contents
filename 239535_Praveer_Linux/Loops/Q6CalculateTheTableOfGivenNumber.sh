#!/bin/bash
read -p "Enter the number of which you want to Find the table " n
for ((i=1;i<=10;i++))
do
	echo "$n X $i = $((n*i))"

done

