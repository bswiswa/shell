#!/bin/sh
# 3 operators for chaining execution - &&, || and !
# && - if command on left succeeds (exit status = 0) then do right
# || - if left succeeds, no right else right
# ! invert the value of the return status. If success, return false

! ls nonexistent.txt
echo "The result code is $?"
# note the result code is 0 (success) even though the ls command
# failed to find the file

ls nonexistent.txt && ls -l
echo "The result code is $?"
# note above that the first command fails and the ls -l command is
# not executed. The result code is not equal to 0 (success)

ls nonexistent.txt || ls -l
echo "The result code is $?"
# note above that the first command fails and so the ls -l command
# executes. The result code is equal to 0 (success)

# unless parantheses are used, operator evaluation goes from left
# to right
ls / || ! ls nonexistent.txt && echo "Whatever"
# above, the echo command is performed, unlike below
ls / || ( ! ls nonexistent.txt && echo "Whatever" )

# these operators (&&, || and !) allow us to write an if statement
# without actually using the if keyword however this is discouraged
# as it reduces readability
FOO=3
[ $FOO -eq 3 ] && echo "FOO equals 3"
