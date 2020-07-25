#!/bin/sh
# you can take advantage of the basic calculator command (bc) to
# perform some calculations for you

# this command takes its arguments from standard input
# so you need to use echo

PI=3.141592654
RAD=7
AREA=$(echo "$PI * ($RAD ^ 2)" | bc)
echo "The area is $AREA"
