#!/bin/bash
#使用自定的 退出状态码 使用exit命令定义

#testing the exit status


var1=10
var2=30
var3=$[$var1 + $var2]
echo "the answer is $var3"
exit 5

