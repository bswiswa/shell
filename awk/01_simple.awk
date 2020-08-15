{
    a=$0;
    print "This is a test: a is " a;
}

# The awk interpreter always requires an input file even if your script does not actually read anything from it.
# If you want awk to read from standard input, you must pass a hyphen (-) as the filename
# the awk interpreter can take either a string of raw code or a file to execute. If you pass in a string of code
# as the first argument, the code is executed. If you want to execute code from a file, you pass the -f flag
# followed by the path of the script file

