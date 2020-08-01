#!/bin/sh
# certain nonletter characters may have special meaning
# in order to treat them as ordinary character, they should
# be escaped with a backslash \
# the backslash itself needs to be escaped as well \\
# the exception is the close bracket ] - you do not need
# to escape these but instead they should be made the first
# character in the class
# eg to search for a string containing a \ or a ]
# expression: /[]\\]/
grep '[]\\]' poem.txt
# as a general rule in extended regular expressions, any
# nonalphanumeric character can be safely escaped whether it is
# necessary or not
