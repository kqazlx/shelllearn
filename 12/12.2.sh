#!/bin/bash
#要执行的语句体 中不光能写一条命令 他可以写很多条命令 只要条件返回值为0 则都会执行
#testing multiple commands in the then section

#testuser=root
testuser=rt
if grep $testuser /etc/passwd
then
	echo "this is a my first command"
	echo "this is my second command"
	echo "i can even put in other commands besides echo "
	ls -l /root/
fi
#如果用了一个没有存在的用户那么运行这个脚本就什么也不显示 这样不太好 不知道错误处在哪里 所以就引出了if语句的第二种形式 if then else 
