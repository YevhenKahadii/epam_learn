#1/bin/bash
echo -n "do you like bash? [yes/no]"
read answer 
case $answer in
    [Yy] | [Yy][Ee][Ss])
    echo "great" ;;
    [Nn] | [Nn][Oo])
    echo "bad" ;
    exit 1 ;;
    *) echo "enter Y[es] or N[o]" ;;

esac    
