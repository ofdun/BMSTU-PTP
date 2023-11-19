#!/bin/bash
read A
read B
while [ $B -gt 0 ]; do
    echo -n $A
    B=$((B - 1))
done