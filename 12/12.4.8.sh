#!/bin/bash
echo "tesing if a file is empty"
file_name=$HOME/sentinel
if [ -f $file_name ]
then
	if [ -s $file_name ]
	then
		echo "the $file_name file exists and has data in it."
		echo "will not remove this file "
	else
		echo "the $file_name file exists ,but is empty"
		echo "deleting empth file..."
		rm $file_name
	fi
else
	echo "file ,$file_name does not exitst"
fi
