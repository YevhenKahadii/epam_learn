#Tasks:
#- create homework folder in your user's home folder
#- create SURNAME environment variable equal to your surname
#- verify that SURNAME variable is present in the environment using env command
#- create a script in homework folder that prints the value of SURNAME variable
#- add homework folder to PATH
#- verify that you are able to run your script by typing only its name into the terminal
#Self-check:
#- my_script.sh command gives the following output:
#Surname

#mkdir  HW /home
#SURNAME=Kaga
#export SURNAME=Kaga
#env 
#touch path.sh /home/HW
#vim path.sh
#!#/bin/bash
#echo $SURNAME (save)
#chmod +x path.sh
#export PATH=$PATH:/home/HW
# ./path.sh

#!#/bin/bash
echo $SURNAME 