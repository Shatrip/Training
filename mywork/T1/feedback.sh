if [ $# != 0 ]
then
	echo "====================="
	echo "No arguments needed."
else

echo "Login with Teacher or Student :"
read person
x=`echo $person | tr '[:upper:]' '[:lower:]'`
myfun()
        {
                check1=`expr $1 + 1 2> /dev/null`
                if [ $? = 0 ] && [ $1 -lt 6 ] && [ $1 -gt 0 ]
                then
                        continue

                else
                        echo "Kindly rate the teacher between 1 to 5. Do not use characters. "
                        read var1
                        myfun $var1

                fi
        }

rollno()
	{
		check2=`grep $1 datafile.txt`
		if [ $? -eq 1 ] && [ $1 -gt 1000 ]
		then
			continue
		else
			echo "Roll number should be greater than 1000 or entered roll number is already exists. Please check your roll number again."
			read roll
			rollno $roll
		fi
	}
if [ $x == teacher ]
then
	echo "========================"
	echo "Enter the student name :"
	read student
	echo "Enter the roll number and it should be greater than 1000 :"
	read roll1
	data=`cut -d "|" -f 1-2 datafile.txt | grep -w $roll1 | grep -iw $student`

	if [[ $? -eq 0 ]]
	then
		echo " "
		echo "Feedback from $student :"
		echo "============================================================================="
		echo "Student | RollNo | Syllabus | Detailing | Clearity | Punctuality | Duration"
		echo "============================================================================="
		grep -i $roll1 datafile.txt
	else
		echo "============================"
		cut -d "|" -f 1-2 datafile.txt | grep -iw $student
		echo "============================"
		echo "No data found for entered name and rollno. Please check again."
	fi

elif [ $x == student ]
then
	echo "===================="
	echo "Enter your name :"
	read name 
	echo "Enter your roll number :"
	read roll
	rollno $roll
	echo "========================================"
	echo "Kindly rate the teacher between 1 to 5."
	echo "========================================"
	echo "The teacher covers the entire syllabus :"
	read syllabus
	myfun $syllabus
	if [ -z "$var1" 2> /dev/null]
	then
		continue
	else
		syllabus=$var1
		var1=
	fi
	echo "The teacher discuss the topic in detail :"
	read detail
	myfun $detail
	if [ -z "$var1" 2> /dev/null ] 
        then
                continue
        else
                detail=$var1
		var1=
        fi

	echo "The teacher communicates clearly :"
	read clearly
	myfun $clearly
	if [ -z "$var1" 2> /dev/null ]
        then
                continue
        else
                clearly=$var1
		var1=
        fi

	echo "The teacher is punctual to te class :"
	read punctual
	myfun $punctual
	if [ -z "$var1" 2> /dev/null ]
        then
                continue
        else
                punctual=$var1
		var1=
        fi

	echo "The teacher engages the class for the full duration and completes the course in time :"
	read duration
	myfun $duration
	if [ -z "$var1" 2> /dev/null ]
        then
                continue
        else
                duration=$var1
		var1=
        fi

	echo "========================"
	echo "Thanks for the feedback."
	
	echo $name "|" $roll "|" $syllabus "|" $detail "|" $clearly "|" $punctual "|" $duration >> datafile.txt
else
	echo "================"
	echo "Not a valid user."
	sh feedback.sh
fi

fi
