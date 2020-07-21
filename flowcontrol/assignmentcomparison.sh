#!/bin/sh
#when there is no space before the = operator, the operation is an
#assignment
FIRST_ARG="$1"
#whn there is a space before the operator, the operation is a
#comparison
if [ "$FIRST_ARG" = "Batsi" ] ; then
   echo "Hello $FIRST_ARG"
else
   echo "Hello world!"
fi
