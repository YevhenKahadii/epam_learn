#!/bin/bash
if [ -z $2 ] || [ ! -z $3 ]; then
  echo "you need to set exactly 2 parameters"
  exit 1 
fi

isnumber='^[-]?[0-9]+$'
if [[ $1 =~ $isnumber ]] && [[ $2 =~ $isnumber ]]; then
  echo "the sum of numbers are $(( $1 + $2))"
else
  echo "please enter numbers only!"
  exit 1  
fi  