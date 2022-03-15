#! /bin/bash

######################################search name function##################################

search_name ()
{
#allnames=$(grep -i  $1 recordFileName.txt | cut -f1 -d "," | tr "\n" ",")
allnames=$(cut recordFileName.txt -f1 -d "," | grep -i $1 |tr "\n" "," )
IFS=","

	if [[ -z $allnames ]]
	then
	echo the record does not exist

	else 
	PS3="please choose record: "
	select records in $allnames "non of them" exit
	do
        break
done


	fi

user_choice_search=$records
#echo $records

}

#######################################Add Records####################################

read -p "Please Enter Record Name to Add: "  add_record
search_name $add_record

echo -n "the amount we have from \"$user_choice_search\" is :" ; cat  recordFileName.txt | grep "$user_choice_search" | cut -f2 -d ","
#grep "$user_choice_search" recordFileName.txt 
#echo $user_choice_search

#find line of the user chois in data file












