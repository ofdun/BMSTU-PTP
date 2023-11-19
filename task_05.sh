#!/bin/bash
read A
read B

res1=$((A + B))
res2=$((A + B*B))
res3=$((A*A - B*B))

echo "$res1 $res2 $res3"
