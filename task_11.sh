#!/bin/bash
read A
END=$A
A=0
while [ $A -le $((END / 2)) ]; do
    echo $A
    A=$((A + 1))
done