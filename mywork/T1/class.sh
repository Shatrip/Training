i=1
while read line
do	
	if [[ $i%2 -eq 1 ]]
	then
		echo "Hey $line , Welcome"
	fi
	((i=$i+1))
done < input.txt
