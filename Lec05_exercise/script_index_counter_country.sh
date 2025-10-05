#!/bin/bash
#
#set the inputfile filed seperator
unset IFS
IFS=$'\t'

#set the intial count number to count the lines
count=0
while read name email city birthday_day birthday_month birthday_year country
do count=$(($count+1))
	echo -e "${count}\t${country}"
done < example_people_data.tsv
