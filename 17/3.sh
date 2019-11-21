#!/bin/bash
#返回值    函数执行完毕会返回一个退出状态码 ， 有三种方式来为函数生成退出状态码
#1、默认退出吗
#2、使用return 命令
#3、使用函数输出
#默认 函数的退出状态码是函数中最后一条命令返回的退出状态码在函数执行后可以使用$?来确定函数的退#出吗



func1() {

	echo " trying to display a non-existent file"
	ls -l badfile
}


echo "testing the function"
func1
echo "the exit status is : $?"

#$函数退出状态码为1 是因为函数的最后一个命令米有成功运行，但是你无法确定函数其他命令是否成功运##行，



echo "****************************************"

echo "*"
echo "*"
echo "*"

echo "*****************************"


echo "测试第二项"
func2() {


	ls -l badfile
	echo "this was a test of a bad command"
}

echo "testing the function:"
func2
echo "the exit status is :$?"



#这次由于函数最后一条语句 echo 运行成功  该函数退出状态码是0 尽管其中有一些命令没有正确的执行#，使用函数的默认退出状态码是很危险的 幸运的是我们有几种方法可以解决这个问题
