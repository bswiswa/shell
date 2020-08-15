{
    i=4
    if($0 ~ /Mary/) {
	while(i) {
	    print i ":" $0;
	    i--;
	}
    }
}

# just like in C, you can even skip the remaining code in an iteration with
# continue
