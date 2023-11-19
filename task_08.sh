#!/bin/bash
read A

if [[ $A =~ ^[0-9]*$ ]]; then
    echo $((A*A))
else
    echo "$A$A"
fi