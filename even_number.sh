#!/bin/bash


# This script checks if a number is even or odd
echo "Even or Odd Number Checker"
echo "----------------------------"
# Allow user to enter a number
read -p "Enter a number: " num  # Prompt user for input

# Check if the number is even or odd
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is an even number."
else
    echo "$num is an odd number."
fi
# End of script