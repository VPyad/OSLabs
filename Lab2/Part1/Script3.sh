echo "Script3, process: " $$;

declare n=9000;
declare fileName=Script3Log.txt;
declare zZZ=1;
declare pathToLog=Bin/$fileName;

rm $pathToLog;

echo "Lets find out which numbers are even, and which are odd in range 1..$n";

for ((i =  1; i <= n; i++))
do
	if [ $((i%2)) -eq 0 ];
	then
    	echo "$i is even" >> $pathToLog;
    else
    	echo "$i is odd" >> $pathToLog;
	fi

	if [ $((i%1000)) -eq 0 ];
	then
		sleep $zZZ;
		echo "----------------" >> $pathToLog;
		echo "zZZ for $zZZ sec" >> $pathToLog;
		echo "----------------" >> $pathToLog;
	fi
done

echo "Script3 Done!";