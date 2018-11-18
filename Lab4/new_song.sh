# add new song
read -p "enter song name: " name
read -p "enter year: " year
read -p "enter genre: " genre
read -p "enter singer: " singer

cat_folder=Catalog;
song_folder=$cat_folder/$name

genre_file=$song_folder/genre;
year_file=$song_folder/year;
singer_file=$song_folder/singer;
name_file=$song_folder/name;

mkdir -p $cat_folder;

mkdir $cat_folder/$name;

touch $genre_file;
touch $year_file;
touch $singer_file;
touch $name_file;

cat > $genre_file <<EOF
$genre
$song_folder
EOF

cat > $year_file <<EOF
$year
$song_folder
EOF

cat > $name_file <<EOF
$name
$song_folder
EOF

cat > $singer_file <<EOF
$singer
$song_folder
EOF