#!/bin/bash

# Prompt the user for a range
echo "Enter the starting number:"
read start

echo "Enter the ending number:"
read end

# Loop through the range
for (( i=$start; i<=$end; i++ ))
do
    if (( i % 3 == 0 )) || (( i % 5 == 0 ))
    then
        echo "It is true for $i"
    elif (( i % 15 != 0 ))
    then
        echo "It is also true for $i"
    else
        echo "Not found for $i"
    fi
done
