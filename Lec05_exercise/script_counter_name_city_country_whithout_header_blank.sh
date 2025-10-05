unset IFS
IFS=$'\t'
count=0
while read name emial city birthday_day birthday_month birthday_year country
do
	if test -z ${name}
	then
		echo -e "X\tBlank line found"
	else
		if test ${city} == "city"
		then
			echo -e "X\tHeader line found"
		else
			count=$((count+1))
			echo -e "${count}\t${name}\t${city}\t${country}"
		fi #a real city and country
	fi #ablank line
done < example_people_data.tsv

