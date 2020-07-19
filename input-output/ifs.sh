#!/bin/sh

#You can change the input field separator to any character you like.
#By default IFS=" "

printf "Enter 3 numbers separated by a semi-colon: "
IFS=";"
read NUM1 NUM2 NUM3
echo "You entered $NUM1, $NUM2, $NUM3"
