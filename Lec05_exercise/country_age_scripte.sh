rm -f *.details
count=0
IFS=$'\t'
while read name email city birthday_day birthday_month birthday_year country
do
	if test -z ${name} || test ${country} == "country"
	then
		continue
	else
		count=$((count+1))
		outputfile=${country// /}.younger.details
		if test ${birthday_year} -le 1980
		then
			outputfile=${country// /}.older.details
		fi #birthdat before 1980, so "older" person
		echo -e "${count}\t${name}\t${birthday_year}\t${country}" >> ${outputfile}
	fi
done < example_people_data.tsv
