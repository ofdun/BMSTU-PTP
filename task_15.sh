#!/bin/bash
sum=0
re='^[+-]?[0-9]+$'
for number in "$@"; do
    if [ -z $number ]; then
        echo "ERROR"
        exit
    elif [[ $number =~ $re ]]; then
        sum=$((sum+number))
    else
        echo "ERROR"
        exit
    fi
done

echo $sum