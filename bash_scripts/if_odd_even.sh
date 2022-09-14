#Tasks:
#- create a script called odd_even.sh that does the following:
#takes one argument
#if the number of letters in the argument is odd, outputs the message "Odd", else if the number of letters is even - outputs "Even"
#- run the script first with "odd" argument, then with "even" argument
#Self-check:
#- odd_even.sh script outputs:
#first run: Odd
#second run: Even



#!/bin/bash
var=$1
if (( ${#var} % 2 == 0 ))
then
    echo "Even"
else 
    echo "Odd"
fi