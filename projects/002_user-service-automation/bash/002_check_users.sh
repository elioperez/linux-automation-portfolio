while read server
do
    echo "=== Connecting to a Server ${server} ==="
    echo ""
    ssh -n ${server} ' 
        for user in dev1 dev2 dev3 elio
        do
            if id ${user} &>/dev/null
            then
                echo "User ${user} already exists..."
            else
                echo "User ${user} NOT exists.."
            fi
        done
    echo ""
    '
done < servers.txt