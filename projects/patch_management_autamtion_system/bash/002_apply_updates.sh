!#/bin/bash

while read -r server
do
  echo "=================================="
  echo "Applying updates on ${server}"
  echo "=================================="

  sudo ssh -n ${server} '
  dnf update -y
  '
  done < servers.txt