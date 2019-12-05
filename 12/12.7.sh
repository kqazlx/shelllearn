#!/bin/bash
#looking for a possible value

if [ $USER = 'rich' ]
then
	echo "welcome $USER"
	echo "please enjoy your visit"
elif [ $USER = "root" ]
then
	echo "welcome $USER"
	echo "please enjoy your visit"
elif [ $USER = "testing" ]
then
	echo "special testing account"
elif [  $USER = "jessica" ]
then
	echo "do not forget to logout when you're doen"
else 
	echo "sorry ,you are not allowed here"
fi


echo "这样写尝试一个变量对应特定的值 需要些很长的if then else语句"
echo "使用case语句就可以尽量简洁的去做这个工程了"
#using the case command


case $USER in
rich | barbara)
	echo "welecome ,$USER"
	echo "please enjoy your visit";;
testing)
	echo "special testing account";;
jessica)
	echo "do not forget to log off when you're done";;
*)
	echo "sorry ,you are not allowed here";;
esac
