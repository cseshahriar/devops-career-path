#!/bin/bash

# io streams
# Create an empty file
touch myfile.txt

# Or create and write initial content
echo "Hello World" > myfile.txt

# Append to file
echo "This line will be added" >> myfile.txt

# Print file content
cat myfile.txt


echo -e "\n"

# Read line by line
while IFS= read -r line
do
    echo "Line: $line"
done < myfile.txt

# Check file extension
filename="myfile.txt"
ext="${filename##*.}"
echo "ext is: $ext"

if [ "$ext" = "txt" ]; then
    echo "This is a text file."
else
    echo "Not a text file."
fi