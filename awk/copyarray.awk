# assignment of arrays is not supported. In order to copy an array,
# you have to copy the individual values from one array to another
BEGIN {
    my_array_length = split("Mary lamb freezer", my_array, / /);
    for (word in my_array) {
	copy_array[word] = my_array[word];
    }
    for (word in copy_array) {
	print copy_array[word];
    }
}
