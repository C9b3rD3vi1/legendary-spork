#!/bin/bash

# Demonstration of for conditions and operators in bash

#Comparison Operators:

#-eq (equal), -ne (not equal)

#-lt (less than), -gt (greater than)

#-z (string is empty)

echo "Comparison Operators:"
echo "---------------------"

number=1
echo "Number: $Age"

read -p "Enter Age: " age  # Prompt user for input

# if statement
if [ $age -lt 18 ]; then
    echo "You are a minor."
else
    echo "You are an adult."
fi