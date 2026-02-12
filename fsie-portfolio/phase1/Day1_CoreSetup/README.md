# Lab: Day 1 — Linux Core Setup & VM/SSH

## Lab Metadata
- Phase: 1 – Core Systems
- Disciplines: Linux Systems, Networking, DevOps Foundation
- Duration: 2–3 hours
- Dependencies: None
- Lab Version: 1.0

## Lab Overview
Set up a secure Linux VM with SSH, firewall, and baseline networking. Foundation for hybrid/cloud deployments.

## Prerequisites
- Host machine (local or cloud VM)
- Ubuntu 22.04 LTS
- Terminal/SSH access
- Basic Linux command knowledge

## Step-by-Step Execution
1. VM creation using VirtualBox / Vagrant
2. SSH key generation & deployment
3. Update & install core packages
4. Configure hostname & /etc/hosts
5. Firewall setup (UFW)
6. Enable time synchronization
7. Verify connectivity

## Automation Scripts / Configs
- VM_Setup.sh
- SSH_Config.md
- Hosts_Config.md

## Failure Injection / Testing
- SSH key misconfiguration
- Firewall blocking access
- Networking misconfig

## Knowledge Graph / Lab Dependencies
- Next: Day 2 — Linux Users/Groups
- Automation scripts reused in multi-node setups

## Portfolio Artifacts
- VM_Setup.sh
- SSH_Config.md
- Hosts_Config.md
- FailureInjection.txt
- FailureInjection.png

## Lessons Learned
- Linux VM creation & SSH setup
- Basic firewall & security
- Networking verification
- Automation scripts for repeatability
