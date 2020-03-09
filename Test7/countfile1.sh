#!/bin/bash
count(){
	if [ $# -ne 0 ]
	then
		c=`cat $1 | wc -l`
		echo $c
	else
		echo "ERROR! $0: missing argument"
	fi
}
res=`count $1`
echo "There are $res lines in your file(s)"
exit
