# USER ACTIVITY REPORT ACCROSS MULTIPLE SERVERS

#!/bin/bash
while read -r server
do
    echo "============================================================"
    echo "ACTIVITY USER ON SERVER ${server}...!"
    echo "____________________________________________________________"

    ssh -n ${server} '
        echo "Logged Users:"
        who
        echo ""
        
        echo "Last Loggings:"
        last -n 10 | head
        echo ""

        echo "User Proccesses:"    
        ps -eo user,pid,cmd --sort=user | head
    '
done < servers.txt