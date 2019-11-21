#!/bin/bash

#象函数中传递参数
#函数可以使用标准的参数环境变量来表示命令行上串给函数的参数。例如，函数名会在$0变量中定义，函数命令行上的热河参数都会通过$1.$2等定义，也可以用$#来计算传递给函数的参数数量
#在脚本中制定函数时候，必须将参数和函数放在同一行，
#比如   func1 $value1 10
#然后函数可以使用参数环境变量来获得参数值，这里有个使用此方法想幻术船只的例子

#passing  parameters to a function
function addem {


	if [ $# -eq 0  ] || [ $# -gt 2 ]
	then 
		echo -1
	elif [ $# -eq 1 ]
	then
		echo $[ $1 + $1  ]
	else
		echo $[ $1 + $2 ]
	fi
	
}


echo -n " adding 10 and 15:"
value=$(addem 10 15)
echo $value
echo -n "let's try adding just one number:"
value=$(addem 10)
echo $value
echo -n "Now trying adding no number:"
value=$(addem)
echo $value
echo -n "finally,try adding three number:"
value=$(addem 10 15 20)
echo $value



#复习一下符号
#-eq 等于
#-ne 不等于
#-gt 大于 greater
#lt 小于 less
# -ge 大于等于
#-le 小于等于

# linux 中命令行执行状态 0 为真 其他值为假
#逻辑与 &&
#第一个条件为假时，第二个条件不用再判断，最终结果已经有了
#第一个结果为真 第二个条件必须判断
#逻辑或 ||
#逻辑非 ！


# 由于函数使用特殊参数环境比那辆作为自己的参数值，因此他无法直接获取脚本在命令行中的参数值

#失败的函数

function badfunc1 {

	echo $[ $1 * $2  ]
	}
if [  $# -eq 2 ]
then 
	value=$(badfunc1)
	echo "the result is $value"
else
	echo "usage:badtest1 a b "
fi 





#尽管使用了$1,$2 但特闷和脚本主题中的$1 $2 并不相同，要在函数中使用这些值，必须在调用函数时 手动将他们传过去

function func7 {

	echo $[ $1 * $2 ]
}

if [ $#  -eq 2 ]
then
	value=$(func7 $1 $2)
	echo "the result is $value"
else
	echo "useage badtest1 a b "
fi 





