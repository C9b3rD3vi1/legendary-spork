#!/bin/bash

# === Function: Read and display file content ===
read_file() {
  local file="$1"  # Take the first argument as the file name
  echo "Reading contents of '$file':"
  
  # Read the file line by line
  while IFS= read -r line; do
    echo "> $line"
  done < "$file"
}


# === Function: Append text to a file ===
append_to_file() {
  local file="$1"  # First argument: file name
  local msg="$2"   # Second argument: message to append
  echo "$msg" >> "$file"  # Append the message to the file
  echo "Added to '$file': $msg"
}

# === Function: Count the number of lines in a file ===
count_lines() {
  local file="$1"
  local lines
  lines=$(wc -l < "$file")  # Get line count using wc -l
  echo "Lines in '$file': $lines"
}

# === Main Script Starts Here ===

# Check if at least 2 arguments are passed (filename and mode)
if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <filename> <mode> [message]"
  echo "Modes:"
  echo "  read   - display the content of the file"
  echo "  append - add a line to the file (requires a third argument)"
  echo "  count  - count how many lines are in the file"
  exit 1
fi

# Assign input arguments to variables
filename="$1"
mode="$2"

# Perform action based on the mode
case "$mode" in
  read)
    read_file "$filename"
    ;;
    
  append)
    # Check if the message is provided
    if [[ -z "$3" ]]; then
      echo "Error: Please provide a message to append."
      exit 1
    fi
    append_to_file "$filename" "$3"
    ;;
    
  count)
    count_lines "$filename"
    ;;
    
  *)
    # If mode is not recognized
    echo "Error: Invalid mode '$mode'"
    echo "Valid modes: read | append | count"
    exit 1
    ;;
esac
