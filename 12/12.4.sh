#!/bin/bash
#test 命令 让if语句能够判断 命令之外的 条件的方式 以test命令
#命令个是 test condition   test 命令条件成立 则会返回一个0的状态码 如果不成立则返回非零的状态码 
#格式 if test condition
#	then
#		commands
#	fi
#如果不写 condition命令的话 就会以非零的状态码结束
#testing the test command
if test 
then
	echo "no expression returns a true"
else 
	echo " no expression returns a falese"
fi

echo "当你加入一个条件时test命令会测试该条件，例如可以使用test测试变量是否有内容 这需要一个简单的表达式"

#testing the test command
my_variable="Full"
if test $my_variable
then
	echo "the $my_variable expression return a true"
else 
	echo "the $my_variable expreesion return a false"
fi

echo "将变量赋值为空测试结果"


#testing the test command
my_variable=""
if test $my_variable
then
        echo "the $my_variable expression return a true"
else
        echo "the $my_variable expreesion return a false"
fi



