#!/bin/bash
if [ -z "$VAR1" -o -z "$VAR2" ]; then
    echo "ERROR"
else
    echo $((VAR1 + VAR2))
fi