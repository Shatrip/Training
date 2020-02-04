if [[ $# != 1 ]]
then
	echo " Please enter one argument. "
else
	check=`grep "$1" file2.txt`
	if [[ $? -eq 0 ]]
	then

		grep "$1" file.txt > t1.txt
		grep "$1" file2.txt > t2.txt

		count=`grep "$1" t1.txt | wc -l`
		i=0
		while read line1
		do 
			echo "$line1" | grep $1
			if [[ $? -eq 0 ]]
        		then
				((i=$i+1))

        		        if [[ $i -lt $count ]]
                		then
					while read line2
                        		do
                        		        var=`echo "$line2" | grep $1`

                                		if [[ $? -eq 0 ]]
                                		then
                                		        echo "$var"
                                		        sed -i '1d' t2.txt
                               			        break
                                		fi

        		                done < t2.txt
                		else
                        		while read line2
                        		do
                                		var=`echo "$line2" | grep $1`

                                		if [[ $? -eq 0 ]]
                                		then
                                        		echo "$var"
                                        		sed -i '1d' t2.txt
                                        		continue
                                		fi
                        		done < t2.txt

               			 fi
        		fi

		done < t1.txt
	else
		echo "word is not in both the files"
	fi
fi
