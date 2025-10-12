#!/bin/bash


# chmod +x file.sh: executable
# ./file.sh

# Bash = Bourne Again Shell

# print
echo "Hello, World!"
echo "This is a class on bash"
echo "Current directory: $(pwd)"
echo "Files:"
ls -l

# variable
name="shahriar"
echo "Hello $name"

# Arithmetic
a=5
b=3
sum=$((a+b))
echo "Sum = $sum"

# input
# echo "Enter your name"
# read fullName
# echo "Welcome, $fullName"

# condition : operators:
# -eq → equal
# -ne → not equal
# -gt → greater than
# -lt → less than
# -ge → greater or equal
# -le → less or equal

num=10
if [ $num -gt 5 ]; then
    echo "number is greater than 5"
else
    echo "Number is 5 or less"
fi  # end of i


# for loops
for i in 1 2 3 4 5
do
    echo "Number $i"
done

# while
count=1
while [ $count -le 5 ]
do
    echo "Count $count"
    ((count++))
done

# function
greet() {
    echo "Hello $1!"
}
greet "Shahriar"

# file operations
# create file
echo "some text" > file.txt

# append
echo "More text" >> file.txt

# read
cat file.txt

# check if a file exists
if [ -f file.txt ]; then
    echo "File exists!"
fi

# exit codes
if ls /notfound; then
    echo "Command Success"
else
    echo "Command failed"
fi

# debugging: bash -x myscript.sh
