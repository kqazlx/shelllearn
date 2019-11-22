#!/bin/bash
#使用变量
#系统变量 使用set 查看全部的变量
#变量引用使用$符号假上后边的变量名字
#注意 在双引号中使用的系统变量 会出现的问题 可以使用\让美元符号不转义
#可以使用${} 来界定变量名和其他的字符

#display user information from the system
echo " user info fro userid : $USER"
echo uid : $UID
echo home: $HOME
