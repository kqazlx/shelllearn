#!/bin/bash
#modifying a set trap


trap "echo 'sorry ... ctrl-c is trapped .'" SIGINT
count=1
while [ $count -le 5 ]
do 
	echo "loop #$count"
	sleep 1 
	count=$[ $count + 1 ]
done
trap "echo ' imodified the trap !'" SIGINT
count=1
while [ $count -le 5 ]
do
	echo "second loop #$count"
	sleep 1
	count=$[ $count + 1]
done
