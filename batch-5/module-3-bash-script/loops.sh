#!/bin/bash

# while
a=0
while [ "$a" -lt 10 ]
do 
    echo "$a"
    a=`expr $a + 1`
done

echo -e "\n for "

# for
for i in 0 1 2 3 4 5 6
do
    if [ $i -eq 2 ] ; then
        continue
    fi

    if [ $i -eq 4 ] ; then
        break
    fi

    echo $i
done

echo -e "\n"

fruits=("apple" "banana" "kiwi" "mango")
for fruit in "${fruits[@]}"
do
    echo $fruit
done

echo -e "\n"
# unit
b=0
until [ ! $b -lt 5 ]
do 
    echo $b
    b=`expr $b + 1`
done