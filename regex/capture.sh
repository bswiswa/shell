#!/bin/sh

# capturing operators and variables are used to take pieces of the
# original input text, capture them while searching, and then
# substitute those bits into the middle of the replacement text
# eg if you want to swap the words 'quick' and 'lazy' in the string
# "The quick brown fox jumped over the lazy dog"

echo "The quick brown fox jumped over the lazy dog" |
    sed "s/The \(.*\) brown \(.*\) the \(.*\) dog/The \3 brown \2 the \1 dog/"

# the content between each pair of parentheses is captured into its own buffer,
# numbered consecutively
