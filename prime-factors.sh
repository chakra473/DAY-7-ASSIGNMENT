#!/bin/bash -x

arr=()
a=0
read -p "enter a number" n

for ((i=2; i<=$n; i++))
do
	if (($n%$i==0))
then
	flag=1

	for ((j=2; $j<=$i/2; j++))
	do
		if (($i%$j==0))
		then
			flag=0
		fi
	done
	if (($flag==1))
	then
		echo $i
		arr[$a]=$i
		((a++))
	fi
	fi
done

echo "the prime factors are ${arr[@]}"
