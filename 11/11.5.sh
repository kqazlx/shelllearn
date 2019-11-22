#!/bin/bash
#输出重定向
#注意符号 >  >>  一个是覆盖目标文件 一个是追加内容给 文件


date > 1.txt
echo `cat 1.txt`
date >> 1.txt
echo `cat 1.txt`
date > 1.txt
echo `cat 1.txt`



echo "*****************************"
echo "输入重定向"


wc < 1.txt

echo "内敛重定向"

wc << EOF
ASJDFKLASD
ASDFJL;ASD
ASDFLKJALS;D
ASDFJKL;ASD
EOF



