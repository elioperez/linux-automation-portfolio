while read server
do
    echo "========= Connecting to a server ${server} =========="
    echo""
    ssh -n ${server} '
    for user in dev1 dev2 dev3
    do
        if id ${user} &>/dev/null
        then
            echo "User already exixts...."
        else
            echo "Creating ${user}..."
            useradd -m -s /bin/bash ${user}
        fi
    done
    '
done < servers.txt