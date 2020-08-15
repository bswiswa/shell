# can use variables to store the pattern for matching (including slashes)

BEGIN { maryword = "mary"; keyword=maryword "lamb"; }
(tolower($1) ~ keyword) { print "Mary appeared."; }
(tolower($1) !~ keyword) { print "No mary."; }

# the above searches for stringsin which "marylamb" appears as the first
# word in a case insensitive comparison
# note how strings (and variables containing strings) separated by a space
# are concatenated automatically in the assignment statement.
# you can also do the concatenation inline too eg
# (tolower($1) ~ "mary" "lamb" ) { print "Mary appeared."; }
