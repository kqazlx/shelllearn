#!/bin/bash
echo " check file group test"
if [ -G $HOME/testing ]
then
	echo "you are in the same group as the file"
else
	echo "the file is not owned by your group"
fi


echo
echo "check file ownership"


if [  -o /etc/passwd ]
then
	echo "you are the owner of the /etc/passwd file"
else
	echo "sorry you are not the owner of the /etc/passwd file"
fi

echo ""
echo ""
echo 
echo "testing file execution"
if [  -x 12.1.sh ]
then
	echo "you can run the script:"
	./12.1.sh
else 
	echo "sorry you are unble to execute the script"
fi

