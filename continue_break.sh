#!/bin/bash

# Demonstration of continue and break statement in bash
# The continue statement is used to skip the current iteration of a loop
# The break statement is used to exit the loop
# Example of continue and break statement
echo "This is a continue and break statement example."
echo "-------------------------------------"

# Loop through numbers 1 to 10
for ((i=1; i<=10; i++)); do
    if [ $i -eq 5 ]; then
        echo "Skipping number 5"
        continue  # Skip the rest of the loop when i is 5
    fi

    if [ $i -eq 8 ]; then
        echo "Breaking the loop at number 8"
        break  # Exit the loop when i is 8
    fi

    echo "Number: $i"
done