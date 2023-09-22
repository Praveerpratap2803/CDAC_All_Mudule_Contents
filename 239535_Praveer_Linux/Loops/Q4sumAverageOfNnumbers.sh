#!/bin/bash
read  -p "Enter the number of Input " n
sum=0
for ((i=1;i<=n;i++))
do 
	read -p "Enter $i input number" var
	sum=$((sum+var))
done
echo "Sum of $n input number is $sum"
echo "Average of $n input number is $((sum/n))"
	 
