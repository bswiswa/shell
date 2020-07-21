#!/bin/sh
# most Unix tools return 0 upon success and a non-zero exit status
# upon failure. A positive status indicates a user error whilst
# a negative status indicates something more serious
# Thus for shell scripts true = 0 and false is any nonzero number
# This is a backwards definition as compared to most programming
# conventions.

printf "foo or bar?: "
read FB
if [ "$FB" = "foo" ] ; then
   echo "Foo"
elif [ "$FB" = "bar" ] ; then
   echo "Bar"
else
   echo "Other"
fi
