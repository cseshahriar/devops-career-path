#!/bin/bash

# Define your function here
Hello() {
    echo "Hello World"
}

# Invoke your function
Hello

# take args
Greet() {
    echo "Hello, $1 $2"
}
# Invoke your function
Greet Shahriar Hosen

# return
GreetReturn() {
    echo "Hello, $1 $2"
    return 10
}
# Invoke your function
GreetReturn Shahriar Hosen

# Capture value returnd by last command
ret=$?
echo "Return value is $ret"