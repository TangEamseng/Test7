#!/bin/bash
count(){
	d=0
	if [ $# -ne 0 ]
	then
		for i in $*
		do
			if [ -d $i ]
			then
				t=`count $i/*`
				d=$(($d + $t))
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
total=`count $*`
echo "There are $total lines in your file(s)"

exit
