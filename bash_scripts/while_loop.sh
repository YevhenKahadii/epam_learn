#Tasks:
#- create console.sh script that does the following:
#implements console functionality - infinite loop that reads user input on each iteration
#supports commands:
#ls [dir] - lists the contents of specified directory
#pwd - shows the path to current directory
#hi - outputs "Hello <name of the current user>" 
#exit - ends the script
#- run your script and test implemented commands 

#!/bin/bash

while :
do
    read -r -p "Enter command: " command

    if [ $command == hi ]; then
        echo "Hello `whoami`"
    
    else

        $command
    fi
done




