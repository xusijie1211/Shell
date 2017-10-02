#!/bin/bash
read -p "Please input your filename: " fileuser
filename=${fileuser:-"filename"}
date1=$(date --date='2 days ago' +%y%m%d)
file1=${filename}${date1}
touch "$file1"
