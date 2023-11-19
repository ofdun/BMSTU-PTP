#!/bin/bash
read A

if [ $((A % 2)) -eq 0 ]; then
    echo MAMA
else
    echo PAPA
fi