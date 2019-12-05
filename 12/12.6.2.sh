#!/bin/bash
echo "双阔号的格式如下 [[ expression  ]]"
echo "test是标准的字符串匹配,但是双阔号提供了模式匹配"
echo "双方括号在base shell中工作良好不过不是所有的shell都支持双方括号的"
echo "在模式匹配中可以定义一个正则表达式来匹配字符串的值"
#using pattern matching
if [[ $USER == r* ]]
then
	echo "hello $USER"
else
	echo "sorry i do not know you "
fi
