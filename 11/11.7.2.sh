#!/bin/bash
#bc 必须安装使用  
# bc -q 进入bc 的时候不显示欢迎内容
#bc 的小数位显示是用scale来 定义的 比如 scale=3 标识显示小数点后三位



#在脚本中使用bc
var1=$(echo "scale=4; 3.44/5" | bc)
echo the answer is $var1


#可以使用变量
#可以将式子写在文件中然后重定向给gc
#可以使用 内敛重定向 将式子直接重定向给bc
var1=100
var2=45
var3=$(echo "scale=4; $var1 / $var2" |bc)
echo the answer for this is $var3


echo "内敛重定向"

var1=10.46
var2=43.67
var3=33.2
var7=71

var5=$(bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1 + b1
EOF
)
echo "the final answer for this mess is $var5"
