#!/bin/bash
#函数中的变量作用域  函数中定义的变量和普通变量的作用于不同，也就是说对脚本其他部分来说 他们是隐藏的
#函数使用两种类型的变量
#全局变量
#局部变量




#全局变量  无论在函数中还是在函数为定义全局变量 都可以在整个脚本中调用这个变量 无论在主题还是在函数体重
#默认情况下你在脚本中定义的变量 都是全局变量，可以在任何一个地方访问



function db1 {

	value=$[ $value * 2 ]

}
read -p "enter a value " value
db1
echo "the now value is $value"


# value 变量在函数外定义冰杯赋值，当db1函数被调用的时候变量和值在函数钟怡然有效，如果变来个在函数内被赋值 那么在脚本引用中新值也依然有效
# 但这个其实很危险，尤其是如果你想在不同的shell 脚本中使用函数的话 他要求你清楚 函数中具体使用了那些变量，包裹那些用来计算返回值得变量  下边就是一个坏的例子



function func1 {

	temp=$[  $value + 5 ]
	result=$[ $temp * 2 ]
}

temp=4
value=6


func1
echo "the result is $result"


if [  $temp -gt $value ]
then 
	echo "temp is larger"
else
	echo "temp is smaller"
fi
#由于函数中使用了$temp变量，他的值在脚本中使用时候收到了影响，产生了一项不到的后果有个简单的办法可以在函数胡中结果这个问题，霞姐将会介绍

