#Tasks:
#- create a script that does the following:
#has a function that multiplies the argument passed to it by itself
#has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console
#- run your function with the following arguments: 5 6 1 3 9
#Self-check:
#- function returns the following output:
#26
#37
#2
#10
#82

#!/bin/bash
mult() {
    for ((i=1; i<=$#; i++ ))
    do
        echo "$(( ${!i}*${!i} ))"
    done    
}

mult $@


add() {
    for j in $@
    do
        echo "$(( $(mult $j) +1 ))"
    done    

}
echo ""
add $@
