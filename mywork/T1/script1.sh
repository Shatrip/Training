echo "Enter a Path"
read path
echo "Enter a string"
read string

cd $path 2>/dev/null

if [[ $? -eq 0 ]]
then	
	git status 2>/dev/null
	
	if [[ $? -eq 0 ]]
	then
		
		git branch | grep $string
		
		if [[ $? -eq 0 ]]
		then
			echo "=============================================================================="
			echo "The directory is a git repository and the string is a branch name."
			echo "=============================================================================="
		else
			git checkout -b $string 2>/dev/null
			echo “My GIT commit from script” > script_file.txt
			git push --set-upstream origin $string 2>/dev/null
			git add . 2>/dev/null
			git commit -m "Commiting from script" 2>/dev/null
			git push 2>/dev/null 2>/dev/null
			echo "=============================================================================="
                        echo "A new branch "$string" and file script_file.txt are created. "
                        echo "=============================================================================="
		fi
	
	else
		echo "=============================================================================="
		echo "The Path is not a git repository." 
		echo "=============================================================================="
	fi

else
	echo "=============================================================================="
	echo "Path is not exist. Please try again."
	echo "=============================================================================="
fi
