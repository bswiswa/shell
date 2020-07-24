#!/bin/sh

# subroutines can even return an exit status to the calling part of
# the script

mysub()
{
    return 3
}

mysub
echo "Subroutine returned $?"

# if you use exit in the subroutine instead of return,
# it exits the entire script not just the subroutine
