while read -r server
do
    echo "============== ${server} =============="

    ssh -n ${server} '
        services=("sshd" "crond" "firewalld")

        for service in "${services[@]}"
        do
            echo "$service -> $(systemctl is-active $service)"
        done
    '

done < servers.txt