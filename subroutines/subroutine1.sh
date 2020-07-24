#!/bin/sh

# subroutines in the Bourne shell look like C functions
# without the argument list

mysub()
{
    echo "argument 1 is: $1"
}

mysub "This is an arg"
