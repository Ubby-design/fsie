
# Lab 1: SSH Authentication Failure (Wrong Public Key)

## Workflow Links
[🛠 Injection Steps](injection_steps.md)  
[🔍 Troubleshooting](troubleshooting.md)  
[✅ Remediation](remediation.md)

---

## Overview

This lab simulates a controlled failure where SSH login fails due to an incorrect public key in the `authorized_keys` file.

**Objectives:**

- Controlled failure injection  
- Troubleshooting SSH authentication failures  
- Using VirtualBox console for emergency recovery  
- Root cause analysis via system logs  

---

## Environment

- Ubuntu Server running in VirtualBox VM  
- SSH key-based authentication enabled  
- VM accessible via **VirtualBox console** for emergency recovery  

---

## Injection Steps Screenshots

![Wrong Key Generated](screenshots/injection_steps/01_wrong_key_generated.png)  
![Wrong Key in authorized_keys](screenshots/injection_steps/02_wrong_key_in_authorized_keys.png)

[See all injection screenshots](screenshots/injection_steps/README.md)

[View detailed injection documentation](injection_steps.md)
---

## Troubleshooting Screenshots

![SSH Login Failure](screenshots/troubleshooting/03_ssh_login_failure.png)  
![Console Log Verification](screenshots/troubleshooting/04_console_access_auth_log.png)

[See all troubleshooting screenshots](screenshots/troubleshooting/README.md)

[View detailed troubleshooting documentation](troubleshooting.md)
---

## Remediation Screenshots

![Restored authorized_keys](screenshots/remediation/05_restored_authorized_keys.png)  
![SSH Login Success](screenshots/remediation/06_ssh_login_success.png)

[See all remediation screenshots](screenshots/remediation/README.md)

[View detailed remediation documentation](remediation.md)
---

## Learning Outcomes

- Controlled SSH failure injection using wrong key  
- Using VirtualBox console to regain access  
- Root cause analysis with `/var/log/auth.log`  
- Systematic failure recovery using backups  
- Documentation of enterprise-grade troubleshooting workflow  
