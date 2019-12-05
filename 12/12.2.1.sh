#!/bin/bash

#if then else 命令的格式
#if command
#then
#	commands
#else
#	commands
#fi

#当if语句中的命令返回退出状态码0时，then 部分中的命令会被执行，这根普通的if-then语句一样 当if语句中的命令返回非零状态码时，bashshell 会执行else部分中的命令

#testuser=root
testuser=rt
if grep $testuser /etc/passwd
then
        echo "this is a my first command"
        echo "this is my second command"
        echo "i can even put in other commands besides echo "
        ls -l /root/
else
	echo "the user $testuser does not  exist on this system."
	echo 
fi


#else语句体中也可以写多条代码 fi关键字表明 整个语句块的结束







