#!/bin/bash
#check if either a directory or file exists
item_name=$HOME
echo 

echo "the item being checked : $item_name"
echo 


if [ -e $item_name ]
then #item does exist
	echo "the item,$item_name,does exist."
	echo "but is it a file ?"
	echo 
	if [ -f $item_name ]
	then #item is a file 
		echo "yes ,$item_name is a file "
	else #item is not a file 
		echo "no $itme_name is not a file "
	fi
else #item does not exist
	echo "the item $item_name,does not exist."
	echo "nothing to update"
fi
	
	

