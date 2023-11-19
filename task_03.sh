#!/bin/bash
re='^[0-9]+$'
if [ -z $VAR1 ]; then
    echo "ERROR"
elif [[ $VAR1 =~ $re ]]; then
    echo $((VAR1 * VAR1))
else
    echo $"${VAR1}mama${VAR1}"
fi