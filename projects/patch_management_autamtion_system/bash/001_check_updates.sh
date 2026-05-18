!#/bin/bash

while read -r server
do
  echo "=================================="
  echo " Checking updates on ${server}"
  echo "=================================="

  sudo ssh -n ${server} '
  dnf check-update
  '
done < servers.txt