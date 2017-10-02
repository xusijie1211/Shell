#!/bin/bash
# Program:
# Program creates three files, which named by user's input
# and date command.
# History:
# 2005/08/23 VBird First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH                                                          # 1. 讥使用者输入文件名，幵叏得 fileuser 这个发量；
echo -e "I will use 'touch' command to create 3 files."				 # 纯粹显示信息
read -p "Please input your filename: " fileuser 					 # 提示使用者输入

# 2. 为了避免使用者随意按 Enter ，刟用发量功能分析档名是否有讴定？
filename=${fileuser:-"filename"} 									 # 开始刞断有否配置文件名

# 3. 开始刟用 date 指令来叏得所需要的档名了；
#date1=$(date --date='2 days ago' +%Y%m%d)	 						 # 前两天的日期
#date2=$(date --date='1 days ago' +%Y%m%d)							 # 前一天的日期
date3=$(date +%Y%m%d)												 # 今天的日期
#file1=${filename}${date1}											 # 底下三行在配置文件名
#file2=${filename}${date2}
file3=${filename}${date3}

# 4. 将档名建立吧！
#mkdir "$file1" 														 # 底下三行在建立档案
#mkdir "$file2"
mkdir "$file3"
