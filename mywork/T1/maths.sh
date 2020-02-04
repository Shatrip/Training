echo "How many problems need to be sloved by Students?"
read problem
echo "How many problems can be sloved by Student1 in one day?"
read s1
echo "How many problems can be sloved by Student2 in one day?"
read s2
echo "How many problems already sloved by Student1?"
read extra
if [ $s1 -gt $s2 ] 
then
	echo "False"
elif [ $s1 -eq $s2 ] && [ $extra -gt 0 ]
then 
	echo "False"
else
	days=1
	((ts1=$s1+$extra))
        ts2=$s2
	while [ $ts1 -lt $problem ] && [ $ts2 -lt $ts1 ] 
	do
	
		((days=$days+1))
		((ts1=$ts1+$s1))
		((ts2=$ts2+$s2))
		
	done	
	if [ $ts2 -gt $ts1 ]
	then
		echo "Student2 overtakes Student1 in $days days."
	else
		echo "False"
	fi
fi

