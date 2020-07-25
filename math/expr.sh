#!/bin/sh
# shell scripts were designed more for string-based processing
# numerical computation is a bit of an afterthought
# basic integer math can be performed. If more complicated
# math is required, use inline Perl scripts or by running bc command
echo expr '(' '3' '*' '4' ')' '+' '2'
echo `expr '(' '3' '*' '4' ')' '+' '2'`
# single quotes wrap each argument to prevent the shell from trying
# to interpret the contents of the argument. In addition, characters
# like () < > hold special meaning to the shell and without the
# quotes, we'd see unexpected behaviour
# NOTE:if an argument contains a shell variable, double quotes must
# be used because shell variables inside single quotes are not
# expanded at all

# expr can also perform numerical comparisons but note
# that it returns 1 if true and 0 if false which is the
# opposite of the return values for command line tools
# and also goes agains true = 0 and false = 1 itself
[ 2 -lt 3 ]
echo $?
echo `expr '2' '<' '3'`
