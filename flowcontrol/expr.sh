#!/bin/sh
# the expr command can perform string commands and basic integer math
# each expression passed must contain multiple quotes if it may
# contain multiple words or if it has any special characters

if [ $(expr "This is a test" '<' "This is another test") ] ; then
    echo "expr can perform string comparisons"
fi

# $() was used above because the test command [ ] expects a single
# value and misinterprets the text in between the spaces
# as arguments

NAME=`expr "$1" '|' "Untitled"`
echo "The chosen name was $NAME"
# here we used the or operator |
# the and operator & works the same way but returns the first
# string if both are nonempty or zero otherwise

# we can use expr and basic regular expressions to calculate
# the length of a string or to count the number of characters
# up to a certain one
STRING="This is a test"
echo "length of string: $STRING = $(expr "$STRING" : ".*")"

echo "there are $(expr "$STRING" : ".*e") characters before e"

# we can also use expr and basic regular expressions to obtain
# substrings
echo "the 7 characters before e are: $(expr "$STRING" : ".*\(.......\)est" )"
