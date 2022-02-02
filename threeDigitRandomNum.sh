#!/bin/bash -x

function threeDigRanNum ()
{
	num=$((RANDOM%900+100))
	echo $num
}

for (( i=1; i<=10; i++ ))
do
	ranNum[i]=$(threeDigRanNum )
done
echo ${ranNum[@]}

min=999
max=100

for ((  j=1; j<=10; j++ ))
do
	if [ ${ranNum[j]} -gt $max ]
	then
		max=${ranNum[j]}
	fi
	if [ ${ranNum[j]} -lt $min ]
	then
		min=${ranNum[j]}
	fi
done
echo $min min, $max max

k=1

while [[ ${ranNum[k]} -lt $max && ${ranNum[k]} -gt $min ]]
do
	(( k++ ))
	Max=100
	Min=999
        if [ ${ranNum[k]} -gt $Max ]
        then
                Max=${ranNum[k]}
        fi
        if [ ${ranNum[k]} -lt $Min ]
        then
                Min=${ranNum[k]}
        fi
done
echo $min min, $max max

