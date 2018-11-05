# start Script1 scripts in background, and Script2 and Script3 in foreground
bash Script1.sh &
bash Script2.sh;
bash Script3.sh;

# bring fg Script to bg
bash Script3.sh &
# press ctrl + z
bg %1

# bring bg Script to fg
bash Script1.sh &
job -l
fg %1
jobs -l