 Project 005 - Backup & Restore Automation

## Overview

This project automates backup and restore operations across multiple Linux servers.

The solution helps administrators protect critical data, automate backup creation, verify backup integrity, and perform recovery operations when needed. It demonstrates essential system administration practices used to support business continuity and disaster recovery objectives.

---

## Objectives
• Automate backup creation across multiple Linux servers.
• Protect critical system and application data.
• Verify backup integrity.
• Automate backup reporting.
• Perform restore operations when required.
• Improve disaster recovery readiness.
• Reduce manual backup administration tasks.

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
• OpenSSH
• Tar
• Cron
• Git
• GitHub
• Visual Studio Code

---

## Skills Demonstrated

• Linux System Administration
• Backup Administration
• Restore Operations
• Disaster Recovery
• SSH Administration
• Bash Scripting
• Python Automation
• Ansible Automation
• Remote Server Administration
• Troubleshooting
• Reporting and Documentation
• Infrastructure Automation

---

## Scripts Included

### Bash

• Create System Backups
• Compress Backup Archives
• Verify Backup Integrity
• Restore Backup Data
• Cleanup Old Backups

### Python
• Backup Reporting
• Backup Validation
• Backup Inventory Generation

### Ansible
• Centralized Backup Automation
• Backup Deployment
• Restore Verification

---

## Use Cases

• Protect critical business data.
• Automate daily backup operations.
• Recover accidentally deleted files.
• Restore systems after failures.
• Support disaster recovery procedures.
• Verify backup availability and integrity.
• Standardize backup operations across multiple servers.

---

## Backup Workflow

### Step 1

Collect target files and directories.

### Step 2

Create compressed backup archives.

### Step 3

Store backups in a designated backup location.

### Step 4

Verify backup creation and integrity.

### Step 5

Generate backup reports.

### Step 6

Perform recovery testing when required.

---

## Recovery Scenarios
• Accidental file deletion.
• Application configuration corruption.
• System failure recovery.
• Data restoration after maintenance activities.
• Disaster recovery validation.

---

## Author
Elio Perez Calzadilla
Junior Linux Administrator | Infrastructure Automation | Bash | Python | Ansible
