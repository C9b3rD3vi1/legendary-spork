#!/bin/bash

# Demonstration of loops in bash
echo "Loops in Bash"
echo "---------------------"

read -p "Enter a number: " num  # Prompt user for input
# For loop, Iterate through a range of numbers  
for (( i=1; i<=num; i++ ))
do
    echo "Iteration $i"
done        
