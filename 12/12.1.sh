#!/bin/bash
#给脚本施加一些 逻辑控制 使用if语句
#格式  if command
#	then
#		commands
#	fi

#if 语句的判断条件的方式是看后边的命令是否正确运行 也就是if后边的语句的返回值是否为0 为0 则执行if语句体中的命令
#fi 说明 if语句结束符号


#testing the if statement

if pwd
then
	echo "it worked"
fi

#一个错误的例子 
if iamnotacommand
then
        echo "it worked"
fi
echo "we are outside the if statement"
#运行中的错误依然会显示 这个问题将在15张解决



#另一种写法将then语句放在if同行 但是必须的有分号才可以
if pwd; then
        echo "it worked"
fi

