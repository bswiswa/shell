#!/bin/sh
# some predefined shorthands for commonly used sets of characters
# exist in regular expressions. These include
# [:alnum:] -> alphanumeric (a-z,A-Z, 0-9)
# [:alpha:] -> alphabetic (a-z, A-Z)
# [:blank:] -> whitespace WITHIN a line (spaces or tabs)
# [:cntrl:] -> control characters (ASCII 0-31)
# [:digit:] -> all numbers
# [:graph:] -> alphanumeric or punctuation
# [:lower:] -> lowercase letters
# [:print:] -> printable characters = [:graph:] + [:space:]
# [:punct:] -> punctuation
# [:space:] -> whitespace (space, tab, newline, carriage return,
#              form feed, vertical tab)
# [:upper:] -> uppercase letters
# [:xdigit:] -> hexadecimal digits (0-9, a-f, A-F)

# example expression
echo 1
grep 'Mary[[:alpha:][:digit:][:blank:]][[:alpha:][:digit:][:blank:]]*lamb*' poem.txt

# the above checks for sentences with Mary followed by lamb. There
# should be at least one instance of text in between but no punctuation

echo 2
# you can also create custom character classes
# expression: /Mary[a-z A-Z]*lamb/
grep "Mary[a-z A-Z]*lamb" poem.txt

echo 3
# the caret (^) when placed as the first character of a character
# class means exclude
# expression /Mary[^.]*lamb/
grep "Mary[^.]*lamb" poem.txt


