# default record separator = new line. Can be changed by modifying
# the regular expression stored in variable RS
# default file separator matches spaces and tabs. Can be changed by
# modifying the regular expression stored in variable FS

# generally you'll want to change the record separator and file separator
# before the first record is read thus you use the BEGIN clause
# if you change them in a normal rule, that new record or file separator
# is not active until the next record is processed.

BEGIN {RS="i"; FS="r" ;}
{
    print "Record is: " $0;
    print "First field is " $1;
}

# You can also specify output separators for both fields and records
# These are specified in ORS and OFS variables. The output field separator
# is printed between fields of $0. The record separator is printed at the
# end of $0
