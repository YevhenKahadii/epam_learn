#Tasks:
#- create a script called my_service.sh which does the following:
#accepts start, stop, restart arguments:
#start - outputs "Service started" message and sleeps for 9999
#stop - gets the PID of my_service.sh process and terminates it, then outputs "Service stopped" message
#restart - stops and then starts the service
#any other argument outputs script usage information
#- add your service to PATH
#- run your script with start and restart arguments in background
#- run your script with stop and help arguments
#Self-check:
#- script executions retrun the following:
#start:
#[1] 45043
#Service is started
#stop:
#Service is stopped
#[2]  + 44996 terminated  ./my_script.sh start
#restart:
#[1] 45863
#Service is stopped
#Service is started
#help:
#usage: my_service.sh [start|stop|restart]

#!/bin/bash

case $1 in

start)
	sleep 9999 &
    	pid=($!)
    	echo $pid
    	echo "Service started"
;;

stop)
	sid=$(ps a | grep sleep | grep -v grep | cut -c 1-7)
	echo $sid	
	kill $sid && echo "Service stopped"
;;

restart)
    	sid=$(ps a | grep sleep | grep -v grep | cut -c 1-7)
        echo $sid
        kill $sid && echo "Service stopped"

	sleep 2

	sleep 9999 &
        pid=($!)
        echo $pid
        echo "Service started"
	;;

*)
    echo "usage: $0 [start|stop|restart]"
    ;;
esac