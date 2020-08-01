#!/bin/sh

# regular expressions have been extended further to include
# character class shortcuts eg \d for [:digit:], \s for [:space:]
# addition of quotation operators \Q and \E -> anything between these
# is treated as literal text even if the variable contains special characters
# in regular expression
# support for retrieving captured values outside the scope of the expression
# nongreedy matching
# noncapturing parentheses
