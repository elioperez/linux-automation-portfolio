!#/bin/bash

while read server

echo "================================"
echo "FAILED SSH LOGINS on ${server}"
echo "Generated: $(date)"
echo "================================="

do
  sudo ssh -n ${server} '
  grep "Failed password" /var/log/secure
  '
done < servers.txt