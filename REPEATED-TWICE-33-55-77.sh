#!/bin/bash -x

arr=()
a=0

for ((i=1; i<=100; i++))
do
if (($i%11==0))
then
	arr[$a]=$i
	((a++))
fi
done

echo "the repeated twice numbers are ${arr[@]}"
