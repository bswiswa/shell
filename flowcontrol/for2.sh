#!/bin/sh
# below is another form of the for loop (which is not always
# supported, so be careful)

for (( i = 1 ; i <= $1 ; i++ )) ; do
    echo "i is $i"
done

# for maximum portability use a while loop:
i=1
while [ $i -le $1 ] ; do
    echo "i is $i"
    i=`expr $i '+' 1`
done
