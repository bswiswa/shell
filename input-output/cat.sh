#!/bin/sh
printf "cat can be used to print the contents of a file in standard output\n
 it can also be used to send multiple lines into a file using
 the > operator eg cat > myfile.txt\n
 When you have typed everything up and are ready to send, you
 can type Ctrl + D\n
Besides using Ctrl + D to specify the end, one can also use the special operator << with cat to specify a value that indicates the end\n
eg cat > myfile.txt << fin\n
here is the text inside my
text file\nfin\nHere everything before fin is sent to the file"

