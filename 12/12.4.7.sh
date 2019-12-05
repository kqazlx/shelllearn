#!/bin/bash
#/testing if you can read a file
pwfile=/etc/shadow
#first,test if the file exists,and is a file
if [  -f $pwfile ]
then
	#new test if you can read it
	if [ -r $pwfile ]
	then
		tail $pwfile
	else
		echo "sorry ,i am upable to read the $pwfile file"
	fi
else
	echo "sorry ,the file $file does not exist"
fi
