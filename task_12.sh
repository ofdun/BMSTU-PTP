#!/bin/bash
read A
END=$((A / 3))
A=0
while [ $A -le $END ]; do
    echo -n $A
    echo -n " "
    A=$((A + 1))
done