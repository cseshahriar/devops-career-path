#!/bin/bash

# print
echo "Hello World!!!"

# pass input 
echo "pass an input"
read user_input
echo $user_input

# declare a variable
variable="Hello World!"
echo $variable

# read env
ENv_FILE=".env"


# function defination
func() {
	echo "function!"
}


func  # call


# parameterize func
add_numbers() {
   local num1="$1"
   local num2="$2"
   local sum=$(($num1+num2))
   echo "The sum of $num1 and $num2 is : $sum"
}

add_numbers 10 20

# if else
echo "enter a number:"
read number

if [ "$number" -eq 100 ]; then
    echo "the number is 100."
else
    echo "The number is not 100."
fi


# nested
echo "Pleae enter a number:"
read user_input
if [ "$user_input" -gt 10 ]; then
    echo "The entered number is greter than 10."
else
    if [ "$user_input" -lt 10 ]; then 
        echo "The entered number is less than 10."
    else
       echo "The entered number is equal to 10"
   fi
fi


# case 
read -p "Enter a fruit name: " fruit
case "$fruit" in
    "apple")
       echo "you selected an apple"
       ;;
    "banana")
	echo "you selected an banana"
	;;
    *)  # default
       echo "unknown fruit."
       ;;
esac  # signal end of case statement

# for loop
fruits=("apple" "banana" "cherry" "date" "fig")  # array
for fruit in "${fruits[@]}"; do
    echo "I like $fruit"
done


# while loop
counter=1
max=5
while [ "$counter" -le "$max" ]; do
    echo "count: $counter"
    counter=$((counter+1))
done
