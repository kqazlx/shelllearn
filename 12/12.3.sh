#!/bin/bash
#嵌套if语句 有时你需要检查脚本代码中的多种条件 。对此，可以使用嵌套的if-then语句。
#testing nested ifs

testuser=NoSuchUser
if grep $testuser /etc/passwd
then 
	echo "the user $testuser exists on this system"
else
	echo "the user $testuser does not  exit on this system"
	if ls -d /home/$testuser/
	then
		echo "however, $testuser has a directory"
	fi
fi

#这样的代码可以实现功能但是不好阅读，很难理解所及流程 下边使用另一种方式来书写
#if command
#then
#	commands
#elif command2
#then
#	more commands
#fi




#testing nested ifs -use elif


testuser=NoSuchUser

if grep $testuser /etc/passwd
then
	echo "the user $testuser exists on this system"
elif ls -d /home/$testuser
then
	echo "the user $testuser does not exist on this system"
	echo "however, $testuser has a directory."
fi

#另一个脚本 在此加入一个判断条件


if grep $testuser /etc/passwd
then
        echo "the user $testuser exists on this system"
elif ls -d /home/$testuser
then
        echo "the user $testuser does not exist on this system"
        echo "however, $testuser has a directory."
else
	echo "the user $testuser does not exist on this system
	echo "and ,$testuser does not have a directory"
fi
#这个仍然是不太好看出来这些东西写的是啥  只有第一返回值为0的代码块会执行  多个选择一个的模式

