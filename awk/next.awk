# you can skip to the next record using next
{
    if (tolower($1) ~ /mary/) next;
    print $0;
}

# the above prints only lines that don't start with Mary, case-insensitive

# likewise, you can skip the remainder of an input file using the nextfile
# statement
{
    if (tolower($1) ~ /marry/){
	print "Last line before skipping rest of file: " $0
	nextfile;
    }
}
