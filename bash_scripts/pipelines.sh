#Tasks:
#- write a one line command using || and && operators that does the following:
#creates a folder named Name_Surname 
#if folder creation was successful, creates a file inside, called my_file
#if file creation was successfull, writes "Hello" into the file
#if previous operation was successful, lists the contents of the file
#if any of the operations fail, print "Something went wrong"
#- run the command two times
#- write a command that outputs only users that have /usr/bin/false shell from /etc/passwd file and changes the shell to /bin/bash

#Self check:
#- first command returns the following outputs:
#Hello
#mkdir: Name_Surname: File exists
#Something went wrong
#- second command returns similar output:
#nobody:*:-2:-2:Unprivileged User:/var/empty:/bin/bash
#daemon:*:1:1:System Services:/var/root:/bin/bash

#!/bin/bash
( mkdir ~/test && cd ~/test && touch my_file && echo "Hello" >> my_file && cat my_file ) || echo "something wrong"
