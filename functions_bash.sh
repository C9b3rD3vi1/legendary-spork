#!/bin/bash

# This script demonstrates the use of functions in bash
# Functions are reusable blocks of code that can be called multiple times
# Function and its parameters arguments
# Example of a simple function

function welcome_message() {
    echo "Welcome to the Bash Functions Tutorial $1!"
    echo "----------------------------------------"
}

# Function to add two numbers
function add_numbers() {
    local num1=$1  # First argument
    local num2=$2  # Second argument
    local sum=$((num1 + num2))  # Calculate the sum
    echo "The sum of $num1 and $num2 is: $sum"
}



welcome_message "C9b3rD3vil" # Call the welcome message function with argument "C9b3rD3vil"
add_numbers 5 10  # Call the add_numbers function with arguments 5 and 10