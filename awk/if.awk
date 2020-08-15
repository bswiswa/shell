{
    if ($0 ~ /Mary/) {
	print "Mary is in this line: " $0;
    } else {
	print "NOMATCH: " $0;
    }
}
