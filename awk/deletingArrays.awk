# since arrays can be sparse, it is necessary to be able to check if a given
# key exists
# this can be done using if(key in array) syntax

# to completely delete a key use delete arr[key];
BEGIN {
    arr["purple"] = "Partridge";
    arr["mountain"] = "pear";
    arr["majesties"] = "tree";
    arr["fruited"] = "Cassidy";

    mykey = "fruited";
    delete arr["mountain"];
    delete arr[mykey];

    for(i in arr){
	print i " = " arr[i];
    }
}

# to delete entire array you can use delete arr;
# this empties the array and resets it for future use
