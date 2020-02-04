if [ $# != 3 ]
then 
	echo "Invalid no. of arguments. Kindly give 3 arguments."
else
	path=`find . -type f -name $3`
	echo $1 $2
	sed "s/devops/shashank/Ig" $path
fi
