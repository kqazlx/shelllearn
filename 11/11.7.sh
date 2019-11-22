#!/bin/bash
#数学运算
#expr 命令提供有限的数学运算 而且中间使用的符号有些需要转移
比如
expr  1 * 2
expr 1 /* 2

echo "(**************************************"
#an example  of using the expr command
var1=10
var2=20
var3=$(expr $var2 / $var1)
echo the result is $var3
