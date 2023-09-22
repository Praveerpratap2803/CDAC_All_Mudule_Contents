#!/bin/bash
echo "Sum of first 10 natural number is "
sum=0
for i in {1..10}
do
	
	sum=$((sum + i))
done
echo $sum	
