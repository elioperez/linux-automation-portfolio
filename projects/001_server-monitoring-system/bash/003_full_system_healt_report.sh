#FULL SYSTEM HEALTH REPORT
#!/bin/bash
while read -r server
do

    echo "========================================================="
    echo "SYSTEM HEALTH REPORT ON ${server}"
    echo "_________________________________________________________"

    ssh -n ${server} '

        echo "Hostname:"
        hostname
        echo ""

        echo "Uptime:"
        uptime
        echo ""

        echo "CPU Load:"
        top -bn 1 | grep "load"
        echo ""

        echo "Memory Usage:"
        free -h
        echo ""

        echo "Disk Usage:"
        df -h
        echo ""

        echo "Top Proccesses:"
        ps -aux --sort=%mem | head -10
        echo ""
    
    '
done < servers.txt
