read -p "enter valid bash dir path: " dir
read -p "enter files extension with following format: '*.txt': " ext
read -p "enter search term: " q

cd $dir;

grep -r -l --include "$ext" "$q" > /var/log/pyadukhov.log;