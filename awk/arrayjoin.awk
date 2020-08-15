# AWK does not provide functions to join an array
# have to create your own
function join(input_array, separator) {
    string = "";
    first = 1;
    # Note that array items are joined in no particular order
    for(arrayindex in input_array){
	if(first) first = 0;
	else string = string separator;
	string = string input_array[arrayindex];
    }
    return string;
}

function count_elements(input_array) {
    count = 0;
    for (arrayindex in input_array){
	count++;
    }
    return count;
}

function orderedJoin(input_array, separator) {
    string = "";
    first = 1;
    # preserves order but works only with numeric arrays
    for ( i = 1; i <=count_elements(input_array); i++){
	if(first) first = 0;
	else string = string separator;
	string = string input_array[i];
    }
    return string;
}

BEGIN {
    arr_length = split("Foo Bar Fizz Buzz", arr, / /);
    print "Regular (unordered) join:"
    print join(arr, "-");
    print "Ordered join:"
    print orderedJoin(arr, "-");
}
