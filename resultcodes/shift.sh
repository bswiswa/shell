#!/bin/sh

# shift provides a way to remove arguments from the argument list
# calling shift deletes the first argument and shifts the remaining
# arguments down by one

echo "\$1: $1 \$2: $2 \$3: $3 \$4: $4 \$5: $5 \$6: $6"
shift
echo "\$1: $1 \$2: $2 \$3: $3 \$4: $4 \$5: $5 \$6: $6"
shift 2
echo "\$1: $1 \$2: $2 \$3: $3 \$4: $4 \$5: $5 \$6: $6"

# run this script with "The quick brown fox jumped over the lazy
# dog."
