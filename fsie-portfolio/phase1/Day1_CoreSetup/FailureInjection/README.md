
Infrastructure Failure Injection & Chaos Engineering Labs
Overview

This repository demonstrates controlled failure simulation in production-like virtualized environments.

The objective is to build advanced troubleshooting, root cause analysis, and structured incident recovery skills by deliberately injecting infrastructure failures into a controlled VM setup.

Rather than reacting to random system issues, failures are intentionally introduced to replicate real-world production incidents commonly encountered by DevOps and Infrastructure Engineers.

Environment Architecture

The labs are executed in a local virtualized infrastructure environment with the following components:

Virtual machines provisioned using Vagrant

Ubuntu Server (Linux-based systems)

SSH key-based authentication

Static IP networking configuration

Host-only networking (VirtualBox)

This setup mimics a simplified production infrastructure layer suitable for controlled failure experimentation.


Failure Scenarios Simulated

The following failure conditions are intentionally injected:


1️⃣ SSH Authentication Failure (Wrong Public Key)

Simulates a failed SSH login due to incorrect public key configuration in the authorized_keys file.

Failure Type: Authentication misconfiguration
Impact: Remote administrative access unavailable

Skills demonstrated:

SSH key pair generation and validation

Public key deployment troubleshooting

File permission verification (~/.ssh/authorized_keys)

Log inspection (/var/log/auth.log)

Root cause identification and remediation


2️⃣ Firewall Blocking SSH Access

Simulates a scenario where firewall rules prevent SSH connectivity.

Failure Type: Network access restriction
Impact: Port 22 unreachable

Skills demonstrated:

Firewall rule inspection (UFW / iptables)

Port reachability testing

Network connectivity debugging

Recovery using console access

Service validation after remediation


3️⃣ Static IP Conflict / Network Misconfiguration

Simulates connectivity failure due to IP duplication or incorrect network configuration.

Failure Type: Network configuration error
Impact: Host unreachable / routing failure

Skills demonstrated:

Network interface inspection

Netplan configuration debugging

ARP conflict detection

Connectivity testing (ping, ip addr, ip route)

Network service restoration

Engineering Methodology Applied


Each failure scenario follows a structured troubleshooting framework aligned with real-world incident response practices:

Failure Injection

Symptom Observation

Hypothesis Formation

Root Cause Analysis

Remediation

Validation of Service Restoration

Documentation


This approach ensures systematic debugging rather than guess-based troubleshooting.

Artifacts

Each lab includes supporting documentation and screenshots:

failure-injection-lab1/ – SSH authentication failure evidence

failure-injection-lab2/ – Firewall misconfiguration evidence

failure-injection-lab3/ – Network/IP conflict evidence


Artifacts capture:

Failure injection steps

Observed symptoms

Diagnostic commands executed

Remediation process

Post-fix validation


Skills Demonstrated

This repository demonstrates practical capability in:

Linux system administration

SSH authentication management

Firewall configuration and debugging

Network troubleshooting

Incident response methodology

Structured documentation practices


Professional Relevance

Failure simulation is a critical skill in production environments. Engineers must not only deploy systems but also understand how they fail and how to recover them quickly.

This lab series reflects:

Proactive failure modeling

Controlled environment experimentation

Engineering discipline in troubleshooting

Documentation suitable for production environments


Conclusion

These labs reinforce the principle that resilient infrastructure is built not just by configuration, but by understanding failure modes and recovery patterns.

By intentionally injecting faults and systematically resolving them, this repository demonstrates readiness for real-world infrastructure operations and DevOps responsibilities.
