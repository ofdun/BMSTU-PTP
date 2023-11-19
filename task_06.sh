#!/bin/bash
if [ -z "$VAR1"]; then
    read VAR1
fi

echo $((VAR1*VAR1))
