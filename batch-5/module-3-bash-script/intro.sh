#!/bin/bash
# Author: MD Shahriar Hosen

# script follows here:

echo "pwd"
pwd

echo "ls"
ls

# variable
name="Shahriar"
readoly name
age=30
isMarried=true
unset age # delete variable

echo "Name $name age $age isMarried $isMarried"

# special variable 
echo $$  # $ char represents the process ID number, or PID, of the current shell 
echo $0 # The filename of the current script.

# take arguments: test.sh 1 b
echo "$1"
echo "$2"

# args value
echo "Quoted Values: $@"
echo "Quoted Values: $*"

# nums of args
echo "number of params : $#"

# accessing all args
for i in $*
do
    echo $i
done

# arrays
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

# Substitution
a=10
echo -e "Value of a is $a \n"
echo -e "This is a backslash: \\"
echo -e "Alert!\a" # alert
echo -e "Hello\bWorld"  # Backspace
echo -e "Hello\c"
echo -e "Hello\nWorld"
echo -e "12345\rABCDE"
echo -e "Hello\tWorld"
echo -e "Hello\vWorld"
