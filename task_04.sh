#!/bin/bash
if [ -z "$VAR1" -o -z "$VAR2" -o -z "$VAR3" ]; then
    echo "ERROR"
else
    if [ "${VAR1,,}" == "yes" ]; then
        echo $((VAR2 + VAR3))
    else
        echo $((VAR3 + VAR2 + VAR2))
    fi
fi