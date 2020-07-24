#!/bin/sh

# sourcing is the process of including one script inside another
# to avoid duplicating content and work
# use the . builtin (or source - less compatible)
# for example, in order to source the subroutine1.sh script here
# we do the following

. ~/Documents/shell/subroutines/subroutine1.sh

MYVAR=4
mysub "This is an arg"
echo "MYVAR STILL $MYVAR"
