#!/bin/bash
# Demonstration of case statement in bash

# Case statement is used to execute different blocks of code based on the value of a variable
# It is similar to switch-case in other programming languages
# Example of case statement


echo "This is a case statement example."
echo "-----------------------------"
read -p " Enter Your Choice :" UserInput  # Prompt user for input


case $UserInput in
    "yes")
        echo "You entered $UserInput."
        ;;
    "no")
        echo "You entered $UserInput."
        ;;
    "maybe")
        echo "You entered $UserInput."
        ;;
    *)
        echo "Invalid input. Please enter yes, no, or maybe."
        ;;
esac
