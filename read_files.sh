#!/bin/bash

while read row
do
	executioTime=$(echo $row | cut -f2 -d, | cut -f2 -d=)
	uploadTime=$(echo $row | cut -f3 -d, | cut -f2 -d=)
	donwloadTime=$(echo $row | cut -f4 -d, | cut -f2 -d=)
	
	sum="$executioTime + $uploadTime + $donwloadTime"
	echo $(expr $sum) >> "complete-time-${1}"
done < "$1"

