#!/bin/sh

# $# counts the number of arguments

# $* expands to the list of arguments starting from $1
# if used inside quotes, all arguments are chained together
# using the IFS as the separator

# $@ expands to the list of arguments starting from $1. The text is
# split as though the entire contents of each argument were
# inserted as is, separated by spaces without quotes

echo "There are $# arguments"

for i in "$@" ; do
    echo ARG $i
done
