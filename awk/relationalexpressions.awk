# in addition to regular expressions, you can use relational expressions
# to perform more fine-grained matching eg based on content of field or
# variable

# compare first field to "mary" in case-insensitive fashion
tolower($1) ~ /mary/ { print "Case-insensitive match for 'mary': " $0; }
$0 !~ /Mary/ { print "Not Mary: " $0; }
$1 == "Mary" { print "Mary Record: " $0; }
