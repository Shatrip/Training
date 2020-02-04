while read line
	do
		host=`echo "$line" | cut -d " " -f1`
		user=`echo $line | cut -d " " -f2`
		pass=`echo "$line" | cut -d " " -f3`
		sshpass -p "$pass" scp <file.name> $user@$host/<path>
		
	done < user.log
sleep 30m
sh server.sh
