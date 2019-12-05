#!/bin/bash
echo "using -d check file is exite or no "
#look before you leap


jump_directory=/home/arthur
if [  -d $jump_directroy ]
then
	echo "the $jump_directory directory exists"
	cd $jump_directory 
	ls
else
	echo "the $jump_directory directory does not exist"
fi
