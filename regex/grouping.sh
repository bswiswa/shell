#!/bin/sh
# grouping allows us to treat multiple characters as a single
# entity which allows us to say modify that entity with a repeat
# operator.
# grouping is done using parentheses or quoted parentheses depending
# on the regular expression dialect
SECTION=0
inc()
{
    SECTION=$( echo "$SECTION + 1" | bc )
    echo $SECTION
}
# eg to search for any string that contains the word "Mary"
# followed optionally by the word "had", followed by the word "a":
# expression (basic): /Mary \(had \)\?a/
# expression (extended): /Mary (had )?a/
inc
grep "Mary \(had \)\?a" poem.txt
grep -E "Mary (had )?a" poem.txt
# by default sed, awk and grep use basic regular expressions. It
# is good practice to try to use basic regular expressions if
# at all possible when working with sed as it uses different
# flags to enable extended regular expressions in its versions


# you can provide multiple grouping match options using the pipe |
# operator between each expression
# expression (basic): /\(Mary\|had\|lamb\)/
# expression (extended): /(Mary|had|lamb)/
inc
grep '\(Mary\|had\|lamb\)' poem.txt
grep -E '(Mary|had|lamb)' poem.txt

# regular expressions generally match from left to right so
# when using multiple options that are substrings of
# each other for a substitution be sure to place the larger
# of the possible matches first
# some tools will do this automatically eg sed
inc
cat poem.txt | sed -E 's/(lamb|lamb,)/orange/'
# but it is better to rearrange or to use a better expression:
cat poem.txt | sed -E 's/(lamb,?)/orange/'

inc
# by default, repetition operators (except ?) are greedy -> that is
# they match the longest possible string that matches the expression
# a s a whole for instance s/Mary.*lamb/Joe/
cat poem.txt | sed "s/Mary.*lamb/Joe/"
# the above will change a line "Mary had a lamb looked like a lamb"
# into simply "Joe"
inc
# In order to match ONLY UP TO the first occurrence of "lamb" you
# can use Perl regular expressions or use a greedy regular expression
# from the other end of the string to replace the word "lamb" with
# another word that is known to not occur anywhere in the input
cat poem.txt | sed 's/lamb\(.*\)$/BLABLABLU\1/' | sed 's/^.*BLABLABLU/Joe/'
