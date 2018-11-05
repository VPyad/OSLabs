echo "Script1, process: " $$;

declare fileName=Script1Log.txt;
declare pathToLog=Bin/$fileName;
declare zZZ=20;

rm $pathToLog;

echo "Sleeping for $zZZ sec. zZZ.. zZZ.. zZZ.."
sleep $zZZ;
echo "Good morning" >> $pathToLog;
echo "Script1 Done!";