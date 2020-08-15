# can create arrays using split
# split returns the length of the created array
# eg the following splits the string by spaces into an array
BEGIN {
    array_length = split("Mary lamb little", my_array, / /);
    for(i=1; i <= array_length;i++){
	print my_array[i];
    }
}
