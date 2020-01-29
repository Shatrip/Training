while read line
        do
                host=`echo "$line" | cut -d " " -f1`
                user=`echo $line | cut -d " " -f2`
                pass=`echo "$line" | cut -d " " -f3`
                sshpass -p "$pass" scp /home/ansadmin/test.yml "$user"@"$host":/home/ansadmin

        done < /var/lib/jenkins/workspace/Test1/user.log

