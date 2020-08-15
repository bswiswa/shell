# the for statement syntax is similar to C syntax
# syntax

{
    if ($0 ~ /Mary/) {
	for(i=0; i<4; i++){
	    if(i == 2) continue;
	    print i+1 ":" $0;
	}
    }
}

# for also supports iterating through an array
# for(key in array) { statement }
