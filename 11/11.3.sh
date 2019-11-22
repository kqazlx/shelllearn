#!/bin/bash
#显示系统消息 使用echo命令
#注意引号的用法
#注意 如何让输出信息和命令行显示在同一行的问题


#this script displays the date and who's loged on
echo the time and date are:
date
echo "let's see who's logged into  the system"
who
echo "************************************"

echo -n "the time and date are:"
date
echo "let's see who's logged into the system"
who
echo "_________________________________"
#echo 是一个很重要的命令可以在脚本的任意地方
