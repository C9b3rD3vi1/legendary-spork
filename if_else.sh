#!/bin/bash

# This script demonstrates the use of if-else statements in bash

echo "If-Else Statements in Bash"
echo "---------------------"

# Allow user to enter a number
read -p "Enter a number: " num  # Prompt user for input

random_number=$((RANDOM % 10 + 1))  # Generate a random number between 1 and 10

# Check if the entered number is equal to the random number
if [ $num -eq $random_number ]; then
    echo "Congratulations! You guessed the number."
else
    echo "Sorry, the correct number was $random_number."
fi