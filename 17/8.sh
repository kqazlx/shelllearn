#!/bin/bash


#局部变量定义
#使用local关键字 例如 local temp=$[  $value + 5]



#local关键字保证了变量只局限在该函数中，如果脚本中出现了同样名字的变量 那么shell 将会保持着两个变量的值是分离的，现在你就能轻松的将函数变量和脚本变量隔离开了 治共享需要的共享变量





function func1 {

      local  temp=$[  $value + 5 ]
        result=$[ $temp * 2 ]
}

temp=4
value=6


func1
echo "the result is $result"


if [  $temp -gt $value ]
then 
        echo "temp is larger"
else
        echo "temp is smaller"
fi
