#!/bin/sh

# grep command exits with a successful exit status (0) if the input matches
# the specified expression at least once or a failed exit status
# (generally 10 if the pattern does not match
# thus it can be used in control statements like if or while

MYVAR="foobar"
if ( echo "$MYVAR" | grep "bar" > /dev/null ) ; then
    echo "The value of MYVAR ($MYVAR) contains \"bar\"."
fi

# in the above example, the exit status of grep is treated as the exit status
# for the group of commands. The redirect to /dev/null prevents the text output
# from being printed to the user's screen.

MYVAR="xxxxx"
while ( echo "$MYVAR" | grep "x" > /dev/null ) ; do
    # Be sure to change MYVAR here!
    echo "got x"
    MYVAR="$(echo "$MYVAR" | sed -E 's/x//')"
done
