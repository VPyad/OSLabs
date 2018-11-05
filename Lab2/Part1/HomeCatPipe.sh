# Terminal 1 window
mkfifo homeCatPipe;
ls -l ./homeCatPipe;
ls -R -l > homeCatPipe;

# Terminal 2 window
cat < homeCatPipe;
rm homeCatPipe;

zip -r9 out.zip folder
unzip out.zip