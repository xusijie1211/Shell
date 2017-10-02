#!/bin/bash
# Using for and loop
# VBird 2002/06/27
declare -i s # <==变量声明
for (( i=1; i<=100; i=i+1 ))
do
           s=s+i
done
echo "The count is ==> $s"
