#!/bin/sh

# another way to do math operations in some shells is with
# double parentheses inline
echo $((3 + 4))
# has the pitfall of lack of support and may fail so use expr instead

# also watch out and avoid using the < > characters without enclosing
# them in single quotes as they will perform redirects instead
# eg if [ 2 > 3 ] ; then echo greater fi
# this will be true even though the comparison is false because
# no comparison is happening here. Instead we are redirecting output
# to a file called 3
