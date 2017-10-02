#!/bin/bash
# Program:
# User input a filename, program will check the flowing:
# 1.) exist? 2.) file/directory? 3.) file permissions
# History:
# 2005/08/25 VBird First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
# 1. 讥使用者输入档名，幵且刞断使用者是否真的有输入字符串？
echo -e "Please input a filename, I will check the filename's type and permission. \n\n"
read -p "Input a filename : " filename

#-z: 空字符串
test -z $filename && echo "You MUST input a filename." && exit 0

# 2. 断档案是否存在？若丌存在则显示讯息幵结束脚本
# -e 检测某个东西是否存在！可以是任何东西
test ! -e $filename && echo "The filename '$filename' DO NOT exist" && exit 0

# 3. 开始刞断文件类型不属性
# -f 常用！检测文件是否存在
test -f $filename && filetype="regulare file"

# -d 常用！检测目录是否存在
test -d $filename && filetype="directory"

# -r 检测是否为可读属性
test -r $filename && perm="readable"

# -w 检测是否为可写入属性
test -w $filename && perm="$perm writable"

# -x 检测是否为可执行属性
test -x $filename && perm="$perm executable"

# 4. 开始输出信息！
echo "The filename: $filename is a $filetype"
echo "And the permissions are : $perm"
