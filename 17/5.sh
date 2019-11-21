#!/bin/bash


#k可以将函数的返回值赋值给变量
#using the echo to return a value

function db1 {

	read -p " enter a value" value
	echo $[ $value * 2 ]
}


result=$(db1)
echo "the new value is $result"


#新函数 会用echo语句来显示计算的结果 。该脚本会获取db1的函数输出，而不是查看退出状态码a
#这个例子 read 命令输出一条剪短的消息来想用户寻味输入值， 但bash 并不把他最为stout输出的一部分，并忽略掉， 如果你用echo语句生成这条消息来想用户查询，那么他会与输出值一起呗镀金shell变量中。
