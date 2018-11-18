# sort
genres_folder=Genres;
years_folder=Years;
singers_folder=Singers;
cat_folder=Catalog;

mkdir -p $genres_folder;
mkdir -p $years_folder;
mkdir -p $singers_folder;

rm $genres_folder/*;
rm $years_folder/*;
rm $singers_folder/*;

for song_folder in "$cat_folder/"*; do
	#echo $song_folder;
	for file in "$song_folder/"*; do
		filename=$(basename "$file");

		if [ "$filename" = "year" ]
		then
			song_year=$(sed -n '1 p' < $file)
			song_dir=$(sed -n '2 p' < $file)

			if ! [ -e $years_folder/$song_year ]
			then
				touch $years_folder/$song_year;
			fi

			echo "$song_dir" >> $years_folder/$song_year;
		fi

		if [ "$filename" = "genre" ]
		then
			song_genre=$(sed -n '1 p' < $file)
			song_dir=$(sed -n '2 p' < $file)

			if ! [ -e $genres_folder/$song_genre ]
			then
				touch $genres_folder/$song_genre;
			fi

			echo "$song_dir" >> $genres_folder/$song_genre;
		fi

		if [ "$filename" = "singer" ]
		then
			song_singer=$(sed -n '1 p' < $file)
			song_dir=$(sed -n '2 p' < $file)

			if ! [ -e $singers_folder/$song_singer ]
			then
				touch $singers_folder/$song_singer;
			fi

			echo "$song_dir" >> $singers_folder/$song_singer;
		fi
	done
done