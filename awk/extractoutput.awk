#!/bin/sh
# one of the trickiest things in shell scripting is handling the output
# of tools that your scripts call

# the tabular data format used by AWK scripts is easy to read in shell
# scripts.
# the UNIX command-line environment provides the cut tool which extracts
# tabular data from lines of text

# to read a file containing tab delimited data fields, then output 3 of them
BEGIN {
    RS="\n"; # default anyway
    FS="\t";
}
{
    print $1 "\t" $3 "\t" $5;
}
