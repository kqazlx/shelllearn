#!/bin/bash
#使用函数
#usiing a function in a script


#定义一个函数 函数的作用输出下面的一句话
#注意 函数一定要在被调用之前定义否则会报错
function func1 {

	echo "this is an example of function"
}


count=1
while [ $count -le 5 ]
do 
	func1
	#$count = [[ $count + 1 ]]
	count=$[ $count + 1 ]
done



echo "this is the end of the loop "
func1
echo "now this is the end of the script"


