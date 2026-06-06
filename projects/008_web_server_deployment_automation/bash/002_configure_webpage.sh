#!/bin/bash

###################################################
# Create Company Landing Page
###################################################

while read -r server
do

    echo "====================================="
    echo "Configuring Website on ${server}"
    echo "====================================="

    ssh -n ${server} "

cat > /tmp/index.html << EOF
<html>
<head>
<title>Linux Automation Portfolio</title>
</head>

<body>
<h1>Web Server Deployment Automation</h1>
<h2>Server: \$(hostname)</h2>
</body>

</html>
EOF
sudo cp /tmp/index.html /var/www/html/index.html

"

done < servers.txt
