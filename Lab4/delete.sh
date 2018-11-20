#!/bin/bash
# delete song if it satisfy criterias and exists

echo "Caution: all songs that mathes entered criterias will be deleted. Note: leave criteria if need. At least one criteria need to be entered"

read -p "Enter year. : " year
read -p "enter genre: " genre
read -p "enter singer: " singer

delete_songs() {
	array=( "$@" )

	for i in "${array[@]}"; do
    	rm -rf "$i"
	done
}

if [ "$year" = "" ] && [ "$genre" = "" ] && [ "$singer" = "" ]
then
	echo "Error: enter at least one criteria!";
	exit;
fi

genres_folder=Genres;
years_folder=Years;
singers_folder=Singers

year_array=()
genre_array=()
singer_array=()

if ! [ "$year" = "" ]
then
	if ! [ -e $years_folder/$year ]
	then
		echo "No song mathes year criteria: $year";
	else
		while read -r line; do
			song="$line"
			year_array+=($song)
		done < $years_folder/$year

		#for i in "${year_array[@]}"; do
    	#	echo "$i"
		#done
	fi
fi

if ! [ "$singer" = "" ]
then
	if ! [ -e $singers_folder/$singer ]
	then
		echo "No song mathes singer criteria: $singer";
	else
		while read -r line; do
			song="$line"
			singer_array+=($song)
		done < $singers_folder/$singer

		#for i in "${singer_array[@]}"; do
    	#	echo "$i"
		#done
	fi
fi

if ! [ "$genre" = "" ]
then
	if ! [ -e $genres_folder/$genre ]
	then
		echo "No song mathes genre criteria: $genre";
	else
		while read -r line; do
			song="$line"
			genre_array+=($song)
		done < $genres_folder/$genre

		#for i in "${genre_array[@]}"; do
    	#	echo "$i"
		#done
	fi
fi

# all critereas specified, but no songs mathes
if [ ${#year_array[@]} = 0 ] && [ ! "$year" = "" ] && [ ${#genre_array[@]} = 0 ] && [ ! "$genre" = "" ] && [ ${#singer_array[@]} = 0 ] && [ ! "$singer" = "" ]
then
	echo "No songs mathes your criterea"
	exit
fi

# very shity code.. sory
# CODE BELLOW IS UNTESTED

#if [ ! ${#year_array[@]} = 0 ] && [ ${#genre_array[@]} = 0 ] && [ ${#singer_array[@]} = 0 ]
#then
#	echo "year condition"
#	exit
#fi

# all critereas specified, but only year mathes
if [ ! ${#year_array[@]} = 0 ] && [ ${#genre_array[@]} = 0 ] && [ ${#singer_array[@]} = 0 ]
then
	delete_songs "${year_array[@]}"
	bash index.sh
	exit
fi

# all critereas specified, but only genre mathes
if [ ${#year_array[@]} = 0 ] && [ ! ${#genre_array[@]} = 0 ] && [ ${#singer_array[@]} = 0 ]
then
	delete_songs "${genre_array[@]}"
	bash index.sh
	exit
fi

# all critereas specified, but only singer mathes
if [ ${#year_array[@]} = 0 ] && [ ${#genre_array[@]} = 0 ] && [ ! ${#singer_array[@]} = 0 ]
then
	delete_songs "${singer_array[@]}"
	bash index.sh
	exit
fi

# all critereas specified, but only year and genre mathes
if [ ! ${#year_array[@]} = 0 ] && [ ! ${#genre_array[@]} = 0 ] && [ ${#singer_array[@]} = 0 ]
then
	result=()

	l2=" ${genre_array[*]} "                   
	for item in ${year_array[@]}; do
  		if [[ $l2 =~ " $item " ]] ; then
    		result+=($item)
  		fi
	done

	delete_songs "${result[@]}"

	bash index.sh
	exit
fi

# all critereas specified, but only year and singer mathes
if [ ! ${#year_array[@]} = 0 ] && [ ${#genre_array[@]} = 0 ] && [ ! ${#singer_array[@]} = 0 ]
then
	#echo "singer - year"

	result=()

	l2=" ${singer_array[*]} "                   
	for item in ${year_array[@]}; do
  		if [[ $l2 =~ " $item " ]] ; then
    		result+=($item)
  		fi
	done

	delete_songs "${result[@]}"

	bash index.sh
	exit
fi

# all critereas specified, but only genre and singer mathes
if [ ${#year_array[@]} = 0 ] && [ ! ${#genre_array[@]} = 0 ] && [ ! ${#singer_array[@]} = 0 ]
then
	#echo "singer - genre"
	result=()

	#echo "genres"
	#for i in "${genre_array[@]}"; do
    #	echo "$i"
	#done

	#echo "singers"
	#for i in "${singer_array[@]}"; do
    #	echo "$i"
	#done

	l2=" ${singer_array[*]} "                   
	for item in ${genre_array[@]}; do
  		if [[ $l2 =~ " $item " ]] ; then
    		result+=($item)
  		fi
	done

	delete_songs "${result[@]}"

	bash index.sh
	exit
fi

# there is a song(s) that mathes all critereas
if [ ! ${#year_array[@]} = 0 ] && [ ! ${#genre_array[@]} = 0 ] && [ ! ${#singer_array[@]} = 0 ]
then
	#echo "all mathes"
	intersection2=()
	result=()

	l2=" ${genre_array[*]} "                   
	for item in ${year_array[@]}; do
  		if [[ $l2 =~ " $item " ]] ; then
    		intersection2+=($item)
  		fi
	done
	l3=" ${singer_array[*]} "                   
	for item in ${intersection2[@]}; do
  		if [[ $l3 =~ " $item " ]] ; then
    		result+=($item)
  		fi
	done

	delete_songs $result

	bash index.sh
	exit
fi
