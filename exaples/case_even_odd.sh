#!/bin/bash
echo "you've enterd the num $1"
case $1 in
    *[0,2,4,6,8]) 
    echo "num is even" ;;
    *[1,3,5,7,9])
    echo "num is odd" ;;
esac