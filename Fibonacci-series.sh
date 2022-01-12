#!/bin/bash

SERIES_LENGTH=0
while [[ $SERIES_LENGTH -lt 2 ]]; do
    echo 'please enter length of two at least'
    read -p 'enter the length of the series you want:' SERIES_LENGTH
done
FIRST_ELEMENT=0
SECOND_ELEMENT=1
LENGTH_COUNTER=2
echo "Fibonacci Series of length: $SERIES_LENGTH"
echo "1: $FIRST_ELEMENT"
echo "2: $SECOND_ELEMENT"
while [ $LENGTH_COUNTER -lt $SERIES_LENGTH ]
do
    LENGTH_COUNTER=`expr $LENGTH_COUNTER + 1`
    NEXT_ELEMENT=`expr $FIRST_ELEMENT + $SECOND_ELEMENT`
    echo "$LENGTH_COUNTER: $NEXT_ELEMENT"
FIRST_ELEMENT=$SECOND_ELEMENT
SECOND_ELEMENT=$NEXT_ELEMENT
done