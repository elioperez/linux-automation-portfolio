Project 001_server_monitoring_system

## Overview
This project provides Bash scripts to monitor Linux system performance on multiples servers.
It helps administrators quickly check system health including CPU, memory, disk usage.

## Objectives
• Automate Linux inventory collection.
• Collect operating system information.
• Gather hardware and resource utilization details.
• Generate centralized inventory reports.
• Improve infrastructure visibility.
• Reduce manual administrative effort.


## Automation Tools & Execution Guide
*Note: The following collection consists of legacy procedural scripts built during my initial Linux training phases to establish core system baselines:*
* **`bash/001_monitoring-system.sh`**: Captures baseline CPU, memory, and storage utilization.
* **`bash/002_check-critical-service.sh`**: Audits systemd unit statuses for essential daemons.
* **`bash/003_full_system_healt_report.sh`**: Compiles core operating system telemetry.
* **`bash/004_user_activity_report.sh`**: Tracks interactive shell sessions and logged-in user tokens.
* **`bash/005_time_drift_incident.sh`**: Performs initial timestamp sweeps across managed hosts.



## Environment
### Controller Node
• Rocky Linux Automation Controller

### Managed Linux Servers

| Host | IP Address |
|--------|-------------|
| Server01 | 192.168.56.118 |
| Server02 | 192.168.56.122 |
| Server03 | 192.168.56.123 |
| Server04 | 192.168.56.124 |

All systems were deployed in a virtualized lab environment and configured for SSH-based remote administration.

## Technologies Used
• CentOS Linux
• Rocky Linux
• Bash
• Python
• Ansible
• OpenSSH
• Git
• GitHub
• Visual Studio Code

## Skills Demonstrated
• Linux System Administration
• Infrastructure Inventory Management
• SSH Administration
• Bash Scripting
• Python Automation
• Ansible Automation
• Remote Server Administration
• Reporting and Documentation
• Troubleshooting
• Infrastructure Automation

## Author
Elio Perez Calzadilla
Junior Linux Administrator | Infrastructure Automation | Bash | Python | Ansible
