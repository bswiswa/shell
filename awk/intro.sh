#!/bin/sh

# The awk interpreter is a text processing tool based on regular expressions
# As is the case with sed, grep and perl
# AWK is a language designed for processing structured text data records.
# It is executed by the awk interpreter
# AWK divides input text into records based on a record separator (default = \n)
# After dividing the text into records, the interpreter then divides the
# records into fields based on a field separator (FS)
# Once the interpreter has divided records into fields, it executes the rules
# that follow. The rules have access to the record as a whole and to the
# individual fields of the record.
# Syntax is similar to C
# Unlike shell scripts, variables in AWK scripts are not preceeded by $ when you use them
# This means they cannot be inserted in the middle of strings. There are a few exceptions namely -
# $0 which represents an entire record read from the input file as well as the fields of the records
# which are represented by special variables starting with $1 and numbering upwards.
