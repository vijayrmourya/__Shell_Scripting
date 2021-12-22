#!/bin/bash

echo "what is your name?"
read name
echo "How do you do, $name?"
read remark
echo "I am $remark too!"
variable="Hello"
echo $variable

echo "Defining Variables"
variable_name="variable_value"
VAR2=100

echo "Accessing Values"
echo $variable_name

echo "Read-only Variables"
NAME="Vijay Mourya"
readonly NAME
echo $NAME
NAME="Engineer" # gives error "NAME: readonly variable"
echo $NAME

echo "Unsetting Variables"
unset VAR2
echo $VAR2
unset NAME # gives error "unset: NAME: cannot unset: readonly variable"
echo $NAME

echo "special variables"
echo "the process ID number, or PID, of the current shell −"
echo $$
echo "The filename of the current script."
echo $0

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo "$greeting back $user! Today is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"
