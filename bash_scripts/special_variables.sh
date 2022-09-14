#Tasks:
#- create a script that does the following:
#prints the name of the script
#prints all arguments
#prints the number of arguments passed to the script
#prints 2nd and 4th argument
#print the exit code of -eq operation on 1st and 2nd arguments (use [[]])
#- execute your script like this: ./my_script.sh 1 2 hello world
#- change the script arguments so that the result of the last operation (-eq) would be 0
#- run the script again with new arguments
#Self-check:
#- first script run results:
#./my_script.sh
#1 2 hello world
#4
#2 world
#1
#- second script run results contain 0 as the last output

#!/bin/bash
echo "print the name of the sript $0"
echo "print all arguments $*"
echo "print the number of arguments passed yo the script S#"
echo "print 2nd and 4th argument $2 $4"
[[ $1 -eq $2 ]]
echo "print the exit code of -eq operation on 1st and 2nd arguments $?"
