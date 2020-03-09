#!/bin/bash
d=0
count(){
	if [ $# -ne 0 ]
	then
		for i in $*
		do
			if [ -d $i ]
			then
				continue
			else
				c=`cat $i | wc -l`
				d=$(($d + $c))
			fi
		done
		echo $d
	else
		echo "ERROR! $0: missing argument"
	fi
}
res=`count $*`
echo "There are $res lines in your file(s)"
exit
