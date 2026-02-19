# Failure Injection – Day 2: Access Control

---

# Scenario 1 – Permission Denied (Restricted Directory)

## Objective
Simulate a user (`devops3`) being blocked from accessing a secured directory.

---

## Failure Injection

```bash
sudo mkdir /secure-data
sudo chown root:root /secure-data
sudo chmod 700 /secure-data
su - devops3
cd /secure-data
Expected result:

Permission denied
Observability & Verification
ls -ld /secure-data
id devops3
Analysis:

Directory owned by root

Mode 700 restricts access to owner only

devops3 not in owning group

Root Cause
Directory ownership and permission mode restrict access to root only.

Remediation Option 1 (User Ownership)
sudo chown devops3:devops3 /secure-data

Remediation Option 2 (Group-Based Access – Preferred)
sudo groupadd devopsgrp
sudo usermod -aG devopsgrp devops1
sudo chown root:devopsgrp /secure-data
sudo chmod 770 /secure-data

#Screenshot Evidence

[Permission Denied Scenario](screenshots/scenario1_permission-denied/README.md)


# Scenario 2 – Sudo Misconfiguration (Automation Failure)

##Objective
Simulate automation failure due to revoked sudo privileges.

Failure Injection
sudo visudo
Remove:

fsieadmin ALL=(ALL) ALL
Then test:

su - fsieadmin
sudo apt update
Expected result:

fsieadmin is not in the sudoers file.
Observability
sudo -l
tail -n 20 /var/log/auth.log
Analysis:

No sudo privileges assigned

Logs show sudo denial attempts

Root Cause
User removed from sudoers configuration.

Remediation
Restore entry in visudo:

fsieadmin ALL=(ALL) ALL

#Screenshot Evidence

[Sudo Misconfigured Scenario](screenshots/scenario2_sudo_misconfig/README.md)


#Scenario 3 – Missing Group Membership

##Objective
Simulate audit failure by removing required group membership.

Failure Injection
sudo gpasswd -d devops3 depl
id devops1
Observability
Attempt access to shared directory:

cd /secure-data
Expected result:

Permission denied
Verify:

getent group depl
Root Cause
User removed from required access group.

Remediation
sudo usermod -aG depl devops3
newgrp devopsgrp

#Screenshot Evidence

[Group Membership Missing](screenshots/scenario3_missing_group/README.md)
