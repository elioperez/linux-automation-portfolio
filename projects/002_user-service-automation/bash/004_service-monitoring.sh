#!/bin/bash

while read server
do
   echo "======== Monitoring Services on ${server} ============"
   ssh -n ${server} '
   for service in sshd rsyslog systemd-journald crond firewalld
   do
     echo "${service} --> $(systemctl is-active ${service})"
     echo "${service} --> $(systemctl is-enabled ${service})"
    done
   '
done < servers.txt     