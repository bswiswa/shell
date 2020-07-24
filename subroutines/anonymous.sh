#!/bin/sh

# you can also create anonymous inline functions
# eg one way to copy files from one folder to another
# is by using the tar command to compress them
# then using the tar command again in the destination folder to
# extract them

# tar -cf - file1 file2 | { cd "/destination" ; tar -xf - ; }
# here we compress the files, pipe the output to an anonymous
# function in which we change directory  then extract them.
# note that the function ends with a ; before the }

# an issue with the above example is that it is not safe as
# the cd may fail and we would end up extracting the files somewhere
# undefined or losing them. It is safer to do it as follows
# tar -cf - file1 file2 | \
    #     { if cd "/destination" ; then tar -xf - ; }
# this time the extraction is only performed if the cd was
# successful
