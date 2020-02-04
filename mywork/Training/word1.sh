check=`grep "$1" file2.txt`

count=`grep "$1" file.txt | wc -l`

cp file2.txt file3.txt

i=0

while read line
do
	echo "$line" | grep $1

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
					sed -i '1d' file3.txt
					break
				else
					sed -i '1d' file3.txt
				fi
			

			done < file3.txt
		else
			while read line2
                        do
                                var=`echo "$line2" | grep $1`

                                if [[ $? -eq 0 ]]
                                then
                                        echo "$var"
                                        sed -i '1d' file3.txt
                                        continue
                                else
                                        sed -i '1d' file3.txt
                                fi
			done < file3.txt

        	fi
	fi

done < file.txt

