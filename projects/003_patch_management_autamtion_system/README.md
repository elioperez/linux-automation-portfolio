Project 003 — Patch Management Automation
Overview

Patch management is a critical responsibility of Linux System Administrators and Infrastructure Engineers. Keeping servers updated helps mitigate security vulnerabilities, improve system stability, and maintain compliance with organizational policies.

This project demonstrates how to automate the complete patch management lifecycle across multiple Linux servers using Bash, Python, and Ansible from a centralized Rocky Linux administration server.

The solution performs update discovery, patch deployment, reboot verification, and reporting, reducing manual effort and ensuring consistency across the infrastructure.

Objectives
Identify available system updates on multiple Linux servers.
Automate package installation and security patch deployment.
Verify whether servers require a reboot after updates.
Generate reports for operational visibility.
Demonstrate infrastructure automation practices used in enterprise environments.

Environment
Controller Node
Rocky Linux
Bash
Python
Ansible

Managed Nodes
Rocky Linux Servers
SSH Key Authentication

Technologies Used
Bash
Python
Ansible
SSH
DNF
Systemd