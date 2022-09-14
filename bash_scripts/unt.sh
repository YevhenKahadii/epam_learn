#Tasks:
#- create a script that does the following:
#reads a filename from user input
#combines specifyed file with itself until it reaches a size greater than 1024 KB
#- create a file using head -c 4KB /dev/urandom > file.txt command
#- execute your script passing the file you've just created
#Self-check:
#- script returns the following output:
#Filesize: 8
#Filesize: 16
#Filesize: 32
#Filesize: 64
#Filesize: 128
#Filesize: 256
#Filesize: 504
#Filesize: 1004
#Filesize: 2004

#!/bin/bash
echo "Input file name:"
read file
touch $file
filesize=$(stat -c%s $newfile)

until [[ $filesize -gt 1048576 ]]; do

    head -c 4KB /dev/urandom >> $newfile
done