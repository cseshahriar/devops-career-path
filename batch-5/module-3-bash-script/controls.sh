#!/bin/bash
a=10
b=20

if [ $a == $b ]; then
    echo "if block"
elif [ $a -le $b ]; then
    echo "else if block"
else
    echo "Else block"
fi


# switch
fruit="kiwi"

case "$fruit" in
    "apple") echo "This is an apple" ;;
    "banana") echo "This is a banana" ;;
    "kiwi"|"kiwifruit") echo "This is a kiwi";;
    *) echo "Unknown fruit" ;;
esac
