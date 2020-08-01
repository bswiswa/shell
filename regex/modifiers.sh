#!/bin/sh
# used to tune the overall behavior of a regular expression
# eg the /i modifier makes a regular expression case-insensitive (equivalent to
# grep -i
# most commands support the /g modifier which allows you to replace globally -
# without this flag substitution only replaces the first matching occurrence per
# line
# other Perl modifiers include
# /o is a compile once Perl extension that forces a regular expression to only
# compile once if it has a variable
# /m multi-line matching
# /s single line matching
# /x ignore whitespace

echo 1
sed "s/Mary/Joe/" < poem.txt
echo 2
sed "s/Mary/Joe/g" < poem.txt
