#!/bin/bash

string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b strings equal?"
[ $string_a = $string_b ]
echo $?
# 0 indicates True while 1 indicates False

num_a=100
num_b=100

echo "Is $num_a equal to $num_b ?" 
[ $num_a -eq $num_b ]
echo $?
# 0 indicates True while 1 indicates False
