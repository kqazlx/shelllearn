#!/bin/bash

#bash shell 使用return 命令来退出函数并返回特定的退出状态码 return 只允许 整数值来定义函数的退出状态码，从而提供了一种简单的途径 来编程设定函数退出的状态码


#usinig the return command in a function
function db1 {

	read -p "enter a value:" value
	echo "doubling the value"
	return $[ $value * 2 ]


}
echo "测试db1函数"
db1 
echo "the new value is $?"
#这个例子函数会将$value 的值翻两倍 并且使用 return函数 将结果作为返回值返回显示给标准输出
#这种方式必须注意
#1、函数一结束就取返回值
#2、返回状态码必须是0-255
#需要返回较大的数值或者字符串值得话，你就不能用这种返回值得方法了，需要下一个方法


