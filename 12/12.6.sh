#!/bin/bash
echo "字符串比较"
echo "str1 = str2 检查两个字符串是否相同"
echo "str1 != str2  检查连个字符串不相同"
echo "str1 < str2 检查str 是否比str2小"
echo "str1 >str2 检查str1是否比str2大"
echo " -n str1 检查str1 的长度是否非0"
echo " -z str1 检查str1 的长度是否为0"

echo 
echo "testing string equality"
echo 
testuser=root
if [ $USER = $testuser ]
then 
	echo "welcome $testuser"
fi
echo
echo "字符串不等"

echo
echo

testuser=baduser
if [ $USER = testuser ]
then
	echo " have no $testuser "
else
	echo "welcome $testuser"
fi
echo "比较相等的时候会把标点符号,大小写一起计算在内所以一定要注意"

echo "比较大小的时候会出现问题 就是大鱼号必须转义 否则会出现意想不到的问题"


val1=baseball
val2=hockey

if [  $val1 > $val2 ]
then
	echo "$val1 is greate than $val2"
else 
	echo " $val1 is less than $val2"
fi
echo "上例子将大鱼号认为成了 重定向符号所以出现了错误的情况所以输出结果也是错误的"
echo "解决问题的方式就是转义大鱼号"
if [  $val1 \> $val2 ]
then
        echo "$val1 is greate than $val2"
else
        echo " $val1 is less than $val2"
fi

echo "大写小写字符比较的话 认为大写字母小于小写字母，因为使用的字符不同，asciishell比较使用的标准的ascii顺数 但是 这个与sort是想反的 sort使用的是本地化语言设置中定义的排序顺序"


val1=Testing
val2=testing

if [ $val1 \> $val2  ]
then
	echo "$val1 is greate than $val2"
else
	echo " $val1 is less than $val2"
fi

