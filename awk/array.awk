# look like C arrays but behave differently under the hood
# they are associative - meaning they are stored as key-value pairs
# this means they are allocated dynamically as space is needed
# they are sparse - can have array at index 711 with nothing before
# you cannot populate an array in a single operation except by splitting
# a string
# array indices can be non-numeric
# unlike C you can iterate through the array keys in a foreach manner
# and use the keys to index the value

# you can create an array simply by using it or by splitting a string
BEGIN {
    arr[0] = "Partridge";
    arr[1] = "pear";
    arr[2] = "tree";
    arr["David"] = "Cassidy";

    for ( ind in arr ) {
	print "arr[" ind "]=" arr[ind];
    }
}

# note that the arrays are not iterated in order. You have to walk through
# the index numerically to do so
