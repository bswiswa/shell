#!/bin/sh

# you may need to write a recursive script or need to source a
# subroutine library in the same directory
# The shell variable $0 contains the name passed in on the command
# line and if the script was executed with an absolute path,
# that is all you need.
# However if a script is in a directory contained in the PATH
# environment variable, the path may not be there in the command
# to get the actual path, the shell can search through the
# locations in the PATH variable
# You can get the relative path of the executing script
# as follows:
SCRIPT="$(which $0)"

# you can echo to see it
echo "$SCRIPT"

# or call it with arguments as follows
# "$SCRIPT" arguments

echo "Obtaining absolute path"
# you can get the absolute path by adding a few more lines:
if [ "x$(echo $SCRIPT | grep '^\/')" = "x" ] ; then
    SCRIPT="$PWD/$SCRIPT"
fi
echo "$SCRIPT"
# the above means that if script starts with / it is already an
# absolute path but if not, prepending the current working
# directory makes it one
