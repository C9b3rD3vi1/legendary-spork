#!/bin/bash

# This script demonstrates the use of functions in bash
# Functions are reusable blocks of code that can be called multiple times
# Function to display a welcome message
function welcome_message() {
    echo "Welcome to the Bash Functions Tutorial!"
    echo "----------------------------------------"
}

# Function to add two numbers
function add_numbers() {
    local num1=$1  # First argument
    local num2=$2  # Second argument
    local sum=$((num1 + num2))  # Calculate the sum
    echo "The sum of $num1 and $num2 is: $sum"
}