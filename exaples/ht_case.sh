#!/bin/bash
echo "do you like apples or oranges?"
read fruit
case $fruit in
  apples) echo "well" ;;
  oranges) echo "ok" ;;
  *) echo "what?" ;;
esac