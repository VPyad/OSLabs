# Terminal 1 window
mkfifo zipPipe;
zip -r9 out.zip ToZip > zipPipe; # ToZip - replace with target folder name

# Terminal 2 window
cat < zipPipe;
unzip out.zip;
rm out.zip;
rm zipPipe;