rm -rf Catalog;
rm -rf Genres;
rm -rf Years;
rm -rf Singers;

seed_song()
{
	sh new_song.sh << EOF
	$1
	$2
	$3
	$4
EOF
}

seed_song Song1 2018 alternative ID
seed_song Song2 2018 rock ID
seed_song Song3 2018 alternative LP
seed_song Song4 2013 pop LadyGaga
seed_song Song5 2011 rap Eminem
seed_song Song6 2013 Jazz Qwizzy
seed_song Song7 2011 classic Bach
seed_song Song8 2018 alternative ID
seed_song Song9 2009 rap 50Cents
seed_song Song10 2010 pop LadyGaga
seed_song Song11 2009 pop Byonce
seed_song Song12 2011 rock 21Pilots