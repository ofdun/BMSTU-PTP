#!/bin/bash

file1=$1
file2=$2
verbose=$3

# Check if no files or too much
if ! [[ "$#" =~ [23] ]]; then
	exit 1
fi

# Check if 3rd arg is -v
if [[ "$verbose" != "-v" && "$verbose" != "--verbose" && "$verbose" != "" ]]; then
    exit 4
fi

if [ "$verbose" != "" ]; then
    verbose=true
else
    verbose=false
fi

# Check if files exist
if ! [[ -f "$file1" && -f "$file2" ]]; then
	exit 2
fi

# Get files text after first string:.*
string_file1=$(cat -A "$file1" | grep -zo "string:.*" | tr -d "\0")
string_file2=$(cat -A "$file2" | grep -zo "string:.*" | tr -d "\0")

if [ "$string_file1" == "" -o "$string_file2" == "" ]; then
    exit 5
fi

# Compare two files after string:
if [[ "$string_file1" == "$string_file2" ]]; then
    if [ $verbose == true ]; then
        echo "FILE1: $string_file1"
        echo "FILE2: $string_file2"
    fi
	exit 0
else
    if [ $verbose == true ]; then
        echo "FILE1: $string_file1"
        echo "FILE2: $string_file2"
    fi
	exit 3
fi
