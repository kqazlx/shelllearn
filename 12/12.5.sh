#!/bin/bash
echo "baseshell 提供了另一个条件测试方法 无需在if语句中声明test 命令"
#echo “if [ conditiong ]"
#echo "then"
##echo "	commands"
#echo "fi"
echo "方阔号定义了测试条件， 但是在两个方括号之间需要加上空格 否则会报错"
echo "test可以判断三类条件 1、数值比较 2、字符串比较 3、文件比较"
echo "数值比较"
echo 
echo 
echo "n1 -eq n2 n1=n2"
echo "n1 -ge n2 n1>=n2"
echo "n1 -gt n2 n1>n2"
echo "n1 -le n2 n1<=n2"
echo "n1 -lt n2 n1 < n2"
echo "n1 -ne n2 n1 != n2"
echo 
echo 
echo 
echo

#using numberic test evaluationsa
value1=10
value2=11
if [ $value1 -gt 5 ]
then
	echo "the test value $value1 is greater then 5"
fi

echo "比较两个值是否相等"

if [ $value1 -eq $value2 ]
then
	echo "the values are equal"
else 
	echo "the values are different"
fi


echo "浮点数的比较 会出错误"

value1=5.5555


if [ $value1 -gt 5 ]
then
        echo "the test value $value1 is greater then 5"
fi
echo "bash shell只能处理整数  我们不能再test命令中使用浮点数"

