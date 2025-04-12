#!/bin/bash

# Demonstration of while loops in bash

echo "While Loops in Bash"
echo "---------------------"

read -p "Enter a number: " num  # Prompt user for input
# While loop, Continue until a condition is met

counter=1  # Initialize counter

while [ $counter -le $num ]
do
    echo "Iteration $counter"
    ((counter++))  # Increment the counter
done
echo "Done with while loop!"