#Tasks:
#- open a terminal of your choosing
#- in your user's home directory create a file named script.sh
#- make the file executable and add a proper #!
#- write a script that does the following:
#writes "Creating folder" to console
#creates a folder called Name_Surname
#lists folders in current directory
#writes "Creating files" to console
#craetes two files called Name and Surname
#lists contents of Name_Surname folder

!#/bin/bash
echo «Creating folder»
mkdir Name_Surname
ls
echo «Creating files»
cd Name_Surname
touch Name
touch Surname
ls
