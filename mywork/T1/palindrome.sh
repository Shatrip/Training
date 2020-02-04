echo -n "Enter a word: "
read word
reverse=`echo "$word" | rev`
if [[ $word == $reverse ]]
then
echo " palindrome "
else
echo " No"
fi

