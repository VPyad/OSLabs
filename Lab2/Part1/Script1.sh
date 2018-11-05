echo "Script1, process: " $$;

declare fileName=Script2Log.txt;
declare pathToLog=Bin/$fileName;

rm $pathToLog;

echo "Sleeping.."
sleep 15;
echo "Good morning" >> $pathToLog;