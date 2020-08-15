# keys are always stored as string even if they contain numbers.
# thus to compare them numerically, you must add 0 to the key prior
BEGIN {
        my_array[0] = "Partridge";
        my_array[1] = "pear";
        my_array[2] = "tree";
        my_array[13] = "Cassidy";

	min = 0; max = 0;
	for (ind in my_array){
	    if(ind+0 < min) min = ind;
	    if(ind+0 > max) max = ind;
	}
	for (i=0; i <= max; i++) {
	    if( i in my_array) print i "=" my_array[i];
	    else print i " is unset.";
	}
}
