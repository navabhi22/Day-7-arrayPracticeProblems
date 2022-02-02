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

largestNum=0
for (( k=1; k<=10; k++ ))
do
for (( j=1; j<=9; j++ ))
do
if [ ${ranNum[$j]} -ge ${ranNum[$j+1]} ]
then
	largestNum=${ranNum[j]}
	ranNum[j]=${ranNum[$j+1]}
	ranNum[$j+1]=$largestNum
fi
	echo ${ranNum[j]}
done
done
echo ${ranNum[@]}

echo "2nd largest no. is ${ranNum[2]}"
echo "2nd smallest no. is ${ranNum[9]}"
