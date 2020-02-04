echo "How many numbers you to want enter for the calculation"
read count

for (( i=1; i<=$count; i++ ))
do
        echo "Enter number"$i" : "
        read number
	myvar[$i]=$number
done


for (( i=1; i<=$count; i++ ))
do
echo ${myvar[$i]}
done

