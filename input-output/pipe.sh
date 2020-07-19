#!/bin/sh
printf "The pipe | operand allows the connecting of the standard output of one command into the standard input of the next command.\nIt makes shell scripting powerful in that it allows us to link multiple tools together.\neg\nls -l | grep \"rwx\"\nthe above will print out all the files which have rwx permissions or the letters rwx in their name\nWe have piped the output of ls . to the input of grep here\n"
alias lsl="ls -l"
lsl | grep "rwx"
