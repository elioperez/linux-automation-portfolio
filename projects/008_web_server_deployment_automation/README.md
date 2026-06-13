 Project 008 - Web Server Deployment Automation

## Overview

This project automates the deployment and configuration of Apache and Nginx web servers across multiple Linux systems from a centralized Rocky Linux Automation Controller.

The solution installs web server packages, configures services, deploys web content, manages firewall rules, validates service availability, and generates deployment reports using Bash, Python, and Ansible.

This project simulates common infrastructure administration tasks performed by Linux Administrators, Systems Administrators, and Infrastructure Engineers.

---

## Objectives
• Automate web server deployment across multiple Linux servers.
• Install and configure Apache and Nginx.
• Configure firewall access for web services.
• Validate service availability after deployment.
• Standardize server configuration.
• Reduce manual deployment effort.
• Improve deployment consistency and reliability.

---

## Environment

### Controller Node

• Rocky Linux Automation Controller

### Managed Linux Servers

| Host     | IP Address     |
| -------- | -------------- |
| Server01 | 192.168.56.118 |
| Server02 | 192.168.56.122 |
| Server03 | 192.168.56.123 |
| Server04 | 192.168.56.124 |

All systems were deployed in a virtualized lab environment and configured for SSH-based remote administration.

---

## Technologies Used
• CentOS Linux
• Rocky Linux
• Bash
• Python
• Ansible
• Apache HTTP Server
• Nginx
• Firewalld
• OpenSSH
• Git
• GitHub
• Visual Studio Code

---

## Skills Demonstrated
• Linux System Administration
• Web Server Administration
• Apache Administration
• Nginx Administration
• Firewalld Management
• SSH Administration
• Bash Scripting
• Python Automation
• Ansible Automation
• Service Management
• Infrastructure Automation
• Troubleshooting

---

## Project Structure

```text
008_web_server_deployment_automation/

├── README.md
│
├── bash/
│   ├── 001_apache_installation.sh
│   ├── 002_nginx_installation.sh
│   ├── 003_firewall_configuration.sh
│   ├── 004_web_validation.sh
│
├── python/
│   ├── web_server_validation.py
│   └── deployment_report.py
│
├── ansible/
│   ├── deploy_apache.yml
│   ├── deploy_nginx.yml
│   └── configure_firewall.yml
│
├── output/
│
└── screenshots/
```

---

## Scripts Included

### Bash
• Apache Installation
• Nginx Installation
• Firewall Configuration
• Service Validation

### Python
• Web Service Validation
• Deployment Reporting
• Service Availability Checks

### Ansible
• Apache Deployment Automation
• Nginx Deployment Automation
• Firewall Automation
• Service Management

---

## Use Cases
• Deploy web servers in new environments.
• Standardize server configurations.
• Provision development and testing environments.
• Deploy internal web applications.
• Configure production-ready web services.
• Automate infrastructure deployments.
• Reduce deployment errors and configuration drift.

---

## Deployment Workflow

### Step 1

Install required web server packages.

### Step 2

Configure Apache or Nginx services.

### Step 3

Deploy web content and configuration files.

### Step 4

Configure firewall rules.

### Step 5

Start and enable services.

### Step 6

Validate service availability.

### Step 7

Generate deployment reports.

---

## Operational Benefits
• Faster server deployments.
• Consistent configurations.
• Reduced manual effort.
• Improved service reliability.
• Standardized infrastructure management.
• Simplified troubleshooting and maintenance.

---

## Security Considerations
• Restrict unnecessary firewall access.
• Validate running services.
• Minimize exposed network ports.
• Standardize web server configurations.
• Support secure infrastructure practices.

---

## Author
Elio Perez Calzadilla
Junior Linux Administrator | Infrastructure Automation | Bash | Python | Ansible
