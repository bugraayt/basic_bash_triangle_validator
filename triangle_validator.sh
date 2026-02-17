#!/bin/bash

echo "Hello, this program is checking that if your triangle is valid or not."
echo "Please enter your side lengths."
echo "A?"
read a
echo "B?"
read b
echo "C?"
read c

while [[ ! $a =~ ^[0-9] ]]
do
	echo "'A' is unvalid. Please enter a valid number for A:"
	read a
done

while [[ ! $b =~ ^[0-9] ]]
do
        echo "'B' is unvalid. Please enter a valid number for B:"
        read b
done

while [[ ! $c =~ ^[0-9] ]]
do
        echo "'C' is unvalid. Please enter a valid number for C:"
        read c
done

echo "Your values are a=$a, b=$b, c=$c."

if [[ $(($a+$b)) -gt $c && $(($a+$c)) -gt $b && $(($b+$c)) -gt $a ]]
then
	echo "This is a valid triangle."
else
	echo "This is NOT a valid triangle."
fi
