#!/bin/bash
#使用方括号
#    $[]

var1=$[1 + 5]
echo $var1

echo "****************************************"
var2=100
var3=50
var4=45
var5=$[$var2 * ( $var3 - $var4)]
echo the final result is $var5


echo "方括号是有缺陷的 他只会对整数进行运算"
