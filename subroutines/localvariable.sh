#!/bin/sh
# shell variables are by default shared between the subroutines and
# main program body.
# this creates a problem when writing recursive code
# in order to prevent this, use the local statement

mysub()
{
    local MYVAR=1
    SHARED=10
    echo "SUBROUTINE: MYVAR IS $MYVAR"
    echo "SUBROUTINE: SHARED IS $SHARED"
}

MYVAR=2
SHARED=20
echo "MYVAR INITIALLY $MYVAR"
echo "SHARED INITIALLY $SHARED"
mysub
echo "MYVAR STILL $MYVAR"
echo "SHARED IS NOW $SHARED"

# Note that if this subroutine calls other subroutines,
# the local copy of MYVAR is also used by those other subroutines
# unless they also declare a local copy.
