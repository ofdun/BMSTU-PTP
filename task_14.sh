#!/bin/bash
SUM=0
for number in "$@"; do
    SUM=$((SUM+number))
done
echo $SUM