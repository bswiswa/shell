# AWK scripts support two special patterns - BEGIN and END
# any action associated with the BEGIN pattern executes before the
# first record is read from the file eg set the record separator or
# field separators
# any action associated with the END pattern executes after the last
# record is read and processed eg print a total of the records encountered

BEGIN { print "Here is the line we care about."; }
/chocolate/ { print "Mmm. Chocolate. " $0; }
END { print "That's all that matters."; }

# The position of the BEGIN and END rules is not important. You can have
# as many as needed. They are executed in the order in which they appear
