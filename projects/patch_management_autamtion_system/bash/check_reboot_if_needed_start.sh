!#/bin/bash

while read -r server
do
  echo "=================================="
  echo " REBOOT CHECK ON ${server}"
  echo "=================================="
  ssh -n ${server} '
  /usr/bin/needs-restarting -r
  '
done < servers.txt