#!/bin/sh
# one of the trickiest things in shell scripting is handling the output
# of tools that your scripts call

# the tabular data format used by AWK scripts is easy to read in shell
# scripts.
# the UNIX command-line environment provides the cut tool which extracts
# tabular data from lines of text

# to read a file containing tab delimited data fields, then output 2 of them

# store the output in a variable
OUTPUT=`awk 'BEGIN { RS="\n"; FS="\t"; }
{
    print $1 "\t" $2 "\t" $3;
}' tab_delim.txt`

# set the field separator to newline so the for statement below
# will put one line at a time in the "LINE" variable

IFS="
"    # note that it is a literal newline not "\n"

# Parse and print records
RECORDNUMBER=1
for LINE in $OUTPUT ; do
    # by default, cut uses tab as its delimiter.
    # these commands take the 1st and 3rd tab-delimited fields
    # from each line
    FIELD_1="$(echo "$LINE" | cut -f 1)"
    FIELD_3="$(echo "$LINE" | cut -f 3)"


    echo "Record Number $RECORDNUMBER"
    echo "FIELD 1: $FIELD_1"
    echo "FIELD 3: $FIELD_3"
    echo
    RECORDNUMBER="$(expr $RECORDNUMBER '+' 1)"
done
