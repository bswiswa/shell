# much like the similarly named C variables, the ARGV variable is an array
# of arguments passed to an AWK script and the ARGC variable contains
# the number of arguments in ARGV
{
    for (i = 0; i < ARGC; i++) {
	print "ARGUMENT " i " is " ARGV[i];
    }
}


