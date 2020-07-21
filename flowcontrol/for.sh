#!/bin/sh

# for loops iterate over items in a list and do some action with each
# item. By default, they split the items based on a space separator

for i in 1 2 3\ 4 ; do
   echo "$i"
done

# note that 3 and 4 are printed together because the space is escaped
# note that the default input field separator (space) can be changed
# by setting the IFS environment variable

# break and continue can also be used to jump out of a loop or to
# continue on to the next iteration respectively.
# an integer can be supplied at the end of break and continue to
# not only effect the break or continue behaviour on the current
# loop but on the parents and ancestor loops as well.

for i in 1 2 3 4 5 6 7 ; do
    for j in a b ; do
	if [ $i -lt 5 ] ; then
	    continue 2
	fi
	echo "$i$j"
    done
done

#ZPATTERN="rwx"
#IFS="\n"
#for i in $(ls -l | grep "$ZPATTERN") ; do
#    IFS=$' '
#    COUNT=0
#    for j in $i ; do
#	if [ $COUNT -lt 10 ] ; then
#	    echo "$j"
#	    continue 2
#	fi
#	COUNT=$((COUNT+1))
 #   done
    
#done

