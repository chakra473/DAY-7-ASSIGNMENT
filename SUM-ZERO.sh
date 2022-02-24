#!/bin/bash -x

sum=0
array=(-10, -10, 20)

for i in ${array[@]}
do
        let sum=$sum+$i
done

if (($sum==0))
then
        echo "True"
else
        echo "False"
fi

