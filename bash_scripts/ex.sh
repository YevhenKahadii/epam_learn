#!/bin/bash
if (( $1 < 10 )); then
    echo "arg is less 10"
else
    echo "arg is more or = 10"
fi

(( 10 - $1 )); echo "Exit code of (( 10 - $1 )) is $?"

for (( i=$1; i>0; i-- )); do
    echo -n "$i "
done
echo 
echo "Math result in $(( $1 + ($1*20) - ($1^2) ))"    

