#Tasks:
#- create a script file in your home directory that does the following:
#checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation
#checks if 1st string argument is longer than 2nd string argument and outputs the exit code of this operation
#checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation
#checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation
#checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation
#- run your script with "hi world 7 9" arguments
#- add TEST environment variable with "123" value
#- re-run the script with "hello hello 10 7" arguments
#Self-check:
#- first script run should return the following values:
#1
#1
#1
#0
#1
#- second script run should return the following values:
#0
#1
#1
#0
#0

#!/bin/bash
if [[ $1 == $2 ]]; then 
	echo "1st and 2nd string arg are equal"
else
  	echo "1st and 2nd string arg are not equal"
fi

[[ $1 == $2 ]]; echo "Exit code of [[ $1 == $2 ]] is $?"

if [[ $1 > $2 ]]; then
  	echo "1st string arg is longer than 2nd"
elif [[ $2 > $1 ]]; then
  	echo "2nd string arg is longer than 1st"
else
  	echo "arg are equal"
fi
[[ $1 > $2 ]]; echo "Exit code of [[ $1 > $2 ]] is $?"

#TEST="123"
#export TEST
#env
[[ -z $TEST ]]; echo "Exit code of [[ -z $TEST ]] is $?"

if [[ $3 -ne $4 ]]; then 
  	echo "EXIT code of [[ "$3" -ne "$4" ]] is $?"
else
  	echo "Exit code of [[ "$3" -ne "$4" ]] is $?"
fi

if [[ $3 -ge $4 ]]; then
	echo "Exit code of (( "$3" >= "$4" )) is $?"
else 
  	echo "Exit code of (( "$3" >= "$4" )) is $?"
fi
  
