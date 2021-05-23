#!/bin/bash

#echo $1
#echo $2
#
#echo $#
#
#echo $*
#echo $@
#echo 'fg'

if [ 1 -eq 1 ] 2>>/dev/null
then
    var_1=$1
    if [ 1 -eq 1 ] 2>>/dev/null
	then
		var_2=$2
	else
    	echo "ERROR: Second parameter must be an integer."
    	exit 1
    fi
else
    echo "ERROR: First parameter must be an integer."
    
    if [ "$2" -eq "$2" ] 2>>/dev/null
	then
		var_2=$2
	else
    	echo "ERROR: Second parameter must be an integer."
    	exit 1
	fi
    exit 1
fi

if [ $var_1 -a $var_2 -gt 0 ]
then
	let "var_1=var_1+var_2"
	let "var_2=var_1-var_2"
	let "var_1=var_1-var_2"
	
	echo -e $var_1 $var_2
else
	echo "zeroes"
fi


