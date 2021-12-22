#!/bin/bash

series_length=15
x=0
y=1
i=2
echo "Fibonacci Series up to $series_length terms :"
echo "$x"
echo "$y"
while [ $i -lt $series_length ] 
do
i=`expr $i + 1 `
z=`expr $x + $y `
echo "$z"
x=$y
y=$z
done