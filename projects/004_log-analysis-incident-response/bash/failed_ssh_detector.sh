!#/bin/bash

while  read  -r server

do
  echo "================================"
  echo "FAILED SSH LOGINS on ${server}"
  echo "Generated: $(date)"
  echo "================================="


  ssh -n ${server} '
   sudo grep "Failed password" /var/log/secure
  '
done < servers.txt