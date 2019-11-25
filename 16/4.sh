#!/bin/bash
#removing a set trap


trap "echo 'sorry ... ctrl-c is trapped .'" SIGINT
count=1
while [ $count -le 5 ]
do 
	echo "loop #$count"
	sleep 1 
	count=$[ $count + 1 ]
done
#使用双破折号来取消信号
#也可以使用但破折号来回复默认的行为
trap -- SIGINT
echo "i juest remove the trap"
count=1
while [ $count -le 5 ]
do
	echo "second loop #$count"
	sleep 1
	count=$[ $count + 1]
done
