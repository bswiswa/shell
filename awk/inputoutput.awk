# just like in shell scripts, the print statement can be written to a file
# using the redirection operator > (which destroys previous contents of the
# file) or concatenated onto the end of an existing file using the
# concatenation operator >>. Print statement output can be piped to another
# tool using the pipe operator |
BEGIN {
    print "This is a test" > "/tmp/testfile-awk";
    print "This is yet another test entirely" >> "/tmp/testfile-awk";
    getline < "/tmp/testfile-awk";
    print "The record was: " $0;

    "/bin/echo 'This is a test line'" | getline
    print "The second record was: " $0;
}
