#!/bin/bash
if [ $# -eq 0 ]
then
	echo "$0 missing argument"
	exit
fi
a=`. ./lc.sh`
echo "There are $a lines in your file(s)"
exit
