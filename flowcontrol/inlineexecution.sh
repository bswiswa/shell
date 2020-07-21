#!/bin/sh

# two operators can be used for executing a command and placing its
# output in the middle of another command - $() and the backtick `

FOO=1 ; BAR=3
echo "Try this command: `echo $FOO + "$(expr $BAR + 1)"`"
