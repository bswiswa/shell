#!/bin/sh

# a wildcard is a symbol that takes the place of any other symbol
# eg a . is a wildcard that can stand for any character
# wildcards are typically combined with repetition operators to match
# lines in which only a portion of the content is known.
# expression: /Mary.*lamb/
grep "Mary.*lamb" poem.txt
# the above searches for Mary followed by 0 or more characters then
# lamb.

# if you want to do the same search as above but only for matches
# with at least one character between Mary and lamb. There are many
# options
# expression (basic): /Mary.\+lamb/
# expression (extended): /Mary.+lamb/
# expression: /Mary..*lamb/
grep "Mary.\+lamb" poem.txt
grep -E "Mary.+lamb" poem.txt         #extended regexp
grep "Mary..*lamb" poem.txt
# note how in basic regular expressions, the + must be escaped with
# a backslash whereas this is not needed in extended regular
# expressions

# the ? operator matches 0 or 1 repetitions of whatever precedes it.
# like the + operator above, in basic expressions, the ? must be
# escaped with a backslash but not in extended expressions
# expression (basic): /Marr\?y/
# expression (extended): /Marr?y/
grep "Marr\?y" poem.txt
grep -E "Marr?y" poem.txt             # extended regexp
