#!/bin/bash
#test running in the background with output
count=1
while [ $count -le 20 ]
do 
	echo "loop #$count"
	sleep 5
	count=$[ $count + 1 ]
done
echo "test script is complete"
echo "这样做将输出跟shell命令混杂在一起十分的不方便所以我们需要将脚本的标准输入输出放到某个文件中进行重定向"
