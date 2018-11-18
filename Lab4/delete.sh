#!/bin/bash
# delete song if it satisfy criterias and exists

echo "Caution: all songs that mathes entered criterias will be deleted. Note: leave criteria if need. At least one criteria need to be entered"

read -p "Enter year. : " year
read -p "enter genre: " genre
read -p "enter singer: " singer

if [ "$year" = "" ] && [ "$genre" = "" ] && [ "$singer" = "" ]
then
	echo "Error: enter at least one criteria!";
	return;
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

		for i in "${year_array[@]}"; do
    		echo "$i"
		done
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

		for i in "${singer_array[@]}"; do
    		echo "$i"
		done
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

		for i in "${genre_array[@]}"; do
    		echo "$i"
		done
	fi
fi

if [ ${#year_array[@]} = 0 ] && [ ! "$year" = "" ] && [ ${#genre_array[@]} = 0 ] && [ ! "$genre" = "" ] && [ ${#singer_array[@]} = 0 ] && [ ! "$singer" = "" ]
then
	echo "No songs mathes your criterea"
	return
fi
