#!/bin/bash
read -p "Enter the number of natural number sum required" n
sum=0
for((i=0;i<=n;i++))
#for i in {1..n} It will not work
do
	sum=$((sum+i))
done
echo "$sum"
