#!/bin/bash
#命令替换
#将shell命令的输出赋值给变量 就叫命令替换
#两种方式 一个是反引号``一个是$()
testing=`date`
testing1=$(date)
echo $testing
echo $testing1
echo "################################"
echo "the date and time are:" $testing1
echo "***********************"
today=$(date +%s%m%d)
ls /usr/bin/ -al >log.$today
