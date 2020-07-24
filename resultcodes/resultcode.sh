#!/bin/sh
#result codes are also called return values or exit statuses
# they play a critical role in script execution as they are
# utilized in flow control
# usually when a command exits successfully it returns 0
# we can use if statements to test the return values of commands

if ls ; then
    echo "ls command executed successfully"
fi

# the second way is by checking the value of the $? shell
# variable which stores the last exit status

ls
if [ $? = 0 ] ; then
    echo "ls command executed successfully"
fi

# the third way takes advantage of the && operator
ls && echo "ls command executed successfully"
