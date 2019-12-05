#!/bin/bash
echo "if-then语句的高级特性"
echo "使用数学表达式的双阔号((*))"
echo "用户高级字符串处理功能的方括号[[*]]"

echo "双括号命令允许你在比较过程中使用高级数学表达式"
echo "testH只能操作简单的表达式"
echo "实例 (( expression ))"
echo " val++ 后增"
echo " val--  后减"
echo " ++val  先赠"
echo " --val 先减"
echo " ！逻辑求反"
echo " ~ 位求反"
echo " ** 幂运算"
echo " << 左位移"
echo ">> 右位移"
echo " & 位布尔和"
echo "  |  位布尔或"
echo " && 逻辑和"
echo " || 逻辑或 "


val1=10
if ((  $val1 ** 2 > 90 ))
then
	(( val2 = $val1 ** 2))
	echo "the square of $val1 is in $val2"
fi
echo "不需要将双阔号中表达式里的大鱼号转义 这个是双阔号提供的另一个高级特性"
