echo "How many numbers you to want enter for the calculation"
read count

for (( i=1; i<=$count; i++ ))
do
        echo "Enter number"$i" : "
        read number
	result1=`echo $result1 $number | awk '{printf "%f\n",$1+$2}'`
	if [ $i -eq 1 ]
	then
		result2=$number
		result3=$number
		result4=$number
	else
		result2=`echo $result2 $number | awk '{printf "%f\n",$1-$2}'`
		result3=`echo $result3 $number | awk '{printf "%f\n",$1*$2}'`
		result4=`echo $result4 $number | awk '{printf "%f\n",$1/$2}'`
	fi
done
echo "=============================================================="
echo "Addition of numbers :" $result1
echo "=============================================================="
echo "Substraction of numbers :" $result2
echo "=============================================================="
echo "Multiplication of numbers :" $result3
echo "=============================================================="
echo "Division of numbers :" $result4
echo "=============================================================="

