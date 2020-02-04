echo "How many numbers you to want enter for the calculation"
read count

for (( i=1; i<=$count; i++ ))
do
	echo "Enter number"$i" : "
	read number
	myvar[$i]=$number
done
echo "========================================================="

result1=${myvar[1]}
for (( i=2; i<=$count; i++ ))
do
	result1=`echo $result1 ${myvar[$i]} | awk '{printf "%f\n",$1+$2}'`	
done
echo "Sum of numbers :" $result1
echo "========================================================="

result2=${myvar[1]}
for (( i=2; i<=$count; i++ ))
do
        result2=`echo $result2 ${myvar[$i]} | awk '{printf "%f\n",$1-$2}'`
done
echo "Substraction of numbers :" $result2
echo "========================================================="

result3=${myvar[1]}
for (( i=2; i<=$count; i++ ))
do
        result3=`echo $result3 ${myvar[$i]} | awk '{printf "%f\n",$1*$2}'`
done
echo "Multiplication of numbers :" $result3
echo "========================================================="

result4=${myvar[1]}
for (( i=2; i<=$count; i++ ))
do
        result4=`echo $result4 ${myvar[$i]} | awk '{printf "%f\n",$1/$2}'`
done
echo "Division of numbers :" $result4
echo "========================================================="



#do
#	((number1=$number1+$number"$i"))
#	echo "$number1" "$number""$i" 
#	| awk '(printf "%f\n",$1+$2)'
#done
#echo "$number1"

#	if [[ $operation == "+" ]]; then
#	echo $first_no $second_no | awk '(printf "%f\n",$1+$2)'


