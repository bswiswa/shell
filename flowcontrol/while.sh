#!/bin/sh
# keep reading input from user until user enters a blank
# note that since variables are expanded before comparison
# if we try $foo = "" it will be expanded to = with nothing on both
# ends which is a syntax error. 
# Therefore to go around the case where the variable is an empty
# string, we prepend both sides with a letter say x
# as in "x$foo" = "x" so that, when foo is an empty string the 
# expression evaluates to "x" = "x" which is true

FOO="bar"
while [ "x$FOO" != "x" ] ; do
  FOO="$(cat)";
done
# note also the use of the $() operator that allows us to insert
# the output of one command in the middle of a statement -
# an example of inline execution
