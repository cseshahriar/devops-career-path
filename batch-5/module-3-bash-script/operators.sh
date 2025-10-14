#!/bin/bash

# Bourne shell didn't originally have any mechanism to perform simple arithmetic operations but it uses external programs, either awk or expr.
# Expression Evaluator
# awk : Pattern scanning and processing language
# awk : full mini programming language designed for text processing,

# arithmetic operators
val=`expr 2 + 2`
echo "Total value $val"

a=3
b=10
c=$a
d=3
echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
echo `expr $b / $a`
echo `expr $b % $a`

[ $a == $b ] && echo "Equal" || echo "Not equal"
[ $c != $d ] && echo "Not equal" || echo "Equal"

# relational operators
x=10
y=20

[ $x -eq $y ] && echo "Equal" || echo "Not equal" # x is equal to y ?
[ $x -ne $y ] && echo "Not equal" || echo "Equal"  # x is not equal to y ?

[ $x -gt $y ] && echo "a is greater than b" || echo "a is greater than b"  #  a is greater than b ?
[ $x -lt $y ] && echo "a is less than b" || echo "a is less than b"  #  a is greater than b ?

[ $x -ge $y ] && echo "a is greater or eq than b" || echo "a is greater or eq than b"  #  a is greater than b ?
[ $x -le $y ] && echo "a is less than or eq b" || echo "a is less or eq than b"  #  a is greater than b ?

# not operator
[ "$x" != "$y" ] && echo "x != y" || echo "x == y"

# and
if [ $x -lt 100 -a $x -gt 10 ]
then
    echo "True"
else
    echo "False"
fi

# or
if [ $x -lt 100 -o $x -gt 10 ]
then
    echo "True"
else
    echo "False"
fi
