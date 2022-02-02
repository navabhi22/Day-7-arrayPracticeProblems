#!/bin/bash -x

read -p "enter the number " n

function prime()
{
n=$1
numOfFact=0
for (( i=1; i<=n; i++ ))
do
        x=$((n%i))
        if [ $x = 0 ]
        then
                numOfFact=$(($numOfFact+1))
                if [ $numOfFact -gt 2 ]
                then break
                fi
        fi
done
        if [ $numOfFact -le 2 ]
        then
                echo 1
        else
                echo 0
        fi
}

for (( i=1; i<=n; i++ ))
do
	if [ $(prime $i) -eq 1 ]
	then
		if [ $(($n%$i)) -eq 0 ]
		then
		Fact[i]=$i
		fi
	fi
done

echo ${Fact[@]}

