# you can create a filter that only acts if the record matches a certain pattern using regular expressions.
# in general, the format for a conditional filter rule is: pattern { action }
# the pattern can be blank, in which case it matches every record or it can contain a combination of regular
# expressions or relational expressions

# the regular expressions must be a simple search-style regular expression (beginning and ending with a slash)
# they cannot have a command switch or modifier switches eg the case insensitive modifier /mary/i or the substitution
# s/lamb//
# the following will print every line containing "lamb"
/lamb/ {
    a=$0
    print "Contains 'lamb': " a;
}

# you can combine multiple regular expressions with the boolean operators !, ||, &&
/lamb/ && !(/Mary/ || /had/) {
    print "Contains 'lamb' and not 'Mary' or 'little': " a;
}
