#Tasks:
#- create a script that does the following:
#accepts any number of int arguments
#outputs the sum of all arguments
#outputs the number of arguments
#outputs the average of all arguments
#- execute your script with the following arguments 1 2 3 4 5

#!/bin/bash

sum=0
for i in $@; do

    (( sum += $i ))
    done
    echo "Sum: $sum"

count=$#
for i in $@; do
    (( count == $i ))
    done
    echo "Args number: $i"


    avg=$(( $sum / $# ))
    echo "Avg result: $avg"