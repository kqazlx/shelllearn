#!/bin/bash


echo "-nt比较那个文件创建时间新 -ot 比较那个文件创建时间旧 "

#testing file dates


if [  12.1.sh  -nt 12.2.sh ]
then
	echo "the 12.1.sh file is newer than 12.2.sh"
else
	echo "the 12.2.sh file is newer 12.1.sh"
fi
if [ 12.1.sh  -ot 12.2.sh ]
then
	echo "the 12.1.sh file is old than 12.2.sh"
fi

if [ badfile1 -nt badfil2  ]
then
	echo "the badfile1 file is newer than badfile2"
else
	echo "the badifle2 file is newer than badfile1"
fi
echo "上边两个bad文件都不存在但语句还是执行了并返一个错误的报告所以 这些比较是不会确定文件是否存在的 如果想要用这个比较的话最好先确定文件的存在 "
