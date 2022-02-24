#!/bin/bash -x

large=0
secondlarge=0
small=1000
secondsmall=0

for ((i=0;i<10;i++))
do
        random[$i]=$(($RANDOM%900+100))
        echo ${random[@]}

done

for (( i=0; $i<=${#random[@]}; i++ ))
do
	if ((${random[$i]} > $large))
then
	(( secondlarge=$large ))
	(( large=${random[i]} ))
else
	if (( ${random[$i]} > $secondlarge ))
then
	(( secondlarge=${random[i]} ))
fi
fi
done

for (( i=0; $i<=${#random[@]}; i++ ))
do
        if ((${random[$i]} < $small))
then
        (( secondsmall=$small ))
        (( small=${random[i]} ))
else
        if (( ${random[$i]} < $secondsmall ))
then
        (( secondsmall=${random[i]} ))
fi
fi
done
 echo ${random[@]}
echo "second largest number $secondlarge"
echo "second smallest number $secondsmall"


