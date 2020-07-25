#!/bin/sh
# if you have some input which is numeric but may have some spaces or
# non-numerics, you can extract the number by using regular
# expressions

MYRAWNUMBER=" 2"
# Note this is a string not a number

# Strip off any characters that aren't in the range of 0-9
MYNUMBER="$(echo "$MYRAWNUMBER" | sed 's/[^0-9]//g')"

echo `expr "$MYNUMBER" '<' '1'`
