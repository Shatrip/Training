if [ $# != 2 ]
then
	echo "Two parameters are needed."
else

echo "Sum of two numbers = " $(($1+$2))

if [ $(($1-$2)) -lt 0 ]
then
echo "Substraction of two numbers = " $(($2-$1))
else
echo "Substraction of two numbers = " $(($1-$2))
fi

echo "Multiplication of two numbers = " $(($1*$2))

echo "Division of two numbers = " $(($1/$2))
fi

