while read server
do
    echo "=== Coneccting to server ${server} ==="
    ssh -n ${server} '
        for user in dev1 dev2 dev3
        do
            if id ${user} &>/dev/null
            then
                echo "Removing user ${user}..."
                userdel -rf ${user}
            else
                echo "User ${user} NOT exists..."
            fi 
        done
    '
done < servers.txt