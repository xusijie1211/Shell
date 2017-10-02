#!/bin/bash
# Using until and loop
# VBird 2002/06/27
declare -i i
declare -i s
until [ "$i" = "101" ]
do
	s=s+i
	i=i+1
done
echo "The count is ==> $s"
