#!/bin/sh

# the shell itself does not natively support regular expressions
# so you must invoke external tools eg
# awk -> a scripting language
# grep
# perl -> a scripting language and more
# sed -> a tool for text substitutions based on regular expressions

# there are 3 types of regular expressions - basic, extended and Perl
# they differ in their syntax rules and capabilities
# The fundamental format for regular expression is one of the
# following depending on the goal
# /search_pattern/modifiers
# command/search_pattern/modifiers
# command/search_pattern/replacement/modifiers
grep 'test' poem.txt
# note that grep expects the leading and trailing slashes removed

# positional anchors - ^ [caret] and $ [dollar] can be used to
# specify the position within a line of text where the search
# pattern should match - the beginning and end respectively
grep "^Mary" < poem.txt
grep "fox$" < poem.txt

# flags can be used to change the matching behavior eg matching
# across multiple lines or case sensitivity.
# expression: s/Mary/Joe/
echo $(cat poem.txt | sed "s/Mary/Joe/")
# note that in the above example, only the first match in a line is
# replaced
# expression: s/Mary/Joe/g
echo $(cat poem.txt | sed "s/Mary/Joe/g")
# here the global flag is used to change this behavior
