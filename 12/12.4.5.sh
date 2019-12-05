#!/bin/bash
location=$HOME
file_name="sentinel"
if [  -e $location ]
then #Directory does exist
	echo "ok on the $location directory"
	echo "now checking on the file, $file_name"
	#
	if [ -e $location/$file_name ]
	then #file does exist
		echo "ok onthe filename"
		echo "updating current date..."
		date >> $location/$file_name
	else #file does not exist
		echo "file does not exist"
		echo "nothing to up date"
	fi
else	#directory does not exist
	echo "the $location directory does not exist"
	echo "nothing to update"
fi
