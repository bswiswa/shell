#!/bin/sh
# the shell variable IFS is used to specify how to split fields
# in an expression. It affects the read command as well as
# variable expansion
# by default it is a space character

IFS=":"
LIST="a:b:c d"
for i in $LIST ; do
    echo $i
done
