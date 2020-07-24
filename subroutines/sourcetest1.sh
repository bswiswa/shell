#!/bin/sh
MYVAR=3
. ~/Documents/shell/subroutines/sourcetest2.sh
echo "MYVAR IS $MYVAR"

# note that the sourced script still changed the value of
# this script variable. This is because the source builtin
# results in the second script executing in the same overall context
# as the first
