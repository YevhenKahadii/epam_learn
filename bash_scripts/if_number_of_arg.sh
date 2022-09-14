#- create a script called my_script.sh that does the following:
#takes any number of arguments
#if there are less than 2 arguments, output the values of these arguments
#if there are more than 2 but less than 4 arguments, output only the last argument
#else output "Invalid number of arguments" message
#- run my_script.sh with the following arguments:
#hello
#hello world
#pie is lie
#keep calm and procrastinate
#Self-check:
#- odd_even.sh script outputs:
#first run: Odd
#second run: Even
#- my_script.sh script outputs:
#hello
#Invalid number of arguments
#lie
#Invalid number of arguments

#!/bin/bash
if [[ $# -lt 2 ]]
then
    echo "The 1st argument is $1"
elif (( $# > 2 )) && (( $# < 4 ))
then
    echo "The last arg is ${@: -1}"
else
    echo "Invalid number of arg"
fi        
