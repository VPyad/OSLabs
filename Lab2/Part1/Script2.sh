echo "Script2, process: " $$;

declare n=9000;
declare fileName=Script2Log.txt;
declare pathToLog=Bin/$fileName;

rm $pathToLog;

echo "Lets count to $n";

for ((i =  1; i <= n; i++))
do
	echo "$i" >> $pathToLog;
done

echo "Script2 Done!";