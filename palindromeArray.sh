#!/bin/bash -x

palindrome () {
num=$1
rev=0
while [ $num != 0 ];
do
        rem=$(( $num % 10 ))
        rev=$(( $rev*10 + $rem ))
        num=$(( $num / 10 ))
done
if [ $rev -eq $1 ];
then
echo 1
else
echo 0
fi
}

for (( j=10; j<=100; j++ ))
do
	if [ $(palindrome $j) -eq 1 ]
then
	palindArray[j]=$j
	fi
done
echo ${palindArray[@]}
