#!/bin/sh
#when there is no space before the = operator, the operation is an
#assignment
FIRST_ARG="$1"

#when there is a space before the operator, the operation is a
#comparison
if [ "$FIRST_ARG" = "Batsi" ] ; then
   echo "Hello $FIRST_ARG"
else
   echo "Hello world!"
fi
# the spaces around the brackets are absolutely necessary.
# failure to include them results in a syntax error
# this is because the [ is a command and expects its last argument
# to be a ] by itself (see man test)
