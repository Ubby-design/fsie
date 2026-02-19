Step-by-Step Lab Execution (With Objectives)
Step 1 — Add Users

Objective: Create users for operational and administrative purposes.

# Add a regular user
sudo adduser devops3
# Add a system/admin user
sudo adduser fsieadmin


Explanation: Separate accounts for security and audit; aligns with least privilege principle.

Step 2 — Add Groups

Objective: Group users to simplify permissions management.

# Create groups
sudo groupadd devops3
sudo groupadd admins

# Add users to groups
sudo usermod -aG depl devops3
sudo usermod -aG admins fsieadmin


Explanation: Groups allow centralized permission control; mirrors AWS IAM groups.

Step 3 — Configure File & Directory Permissions

Objective: Control access to critical directories and files.

# Create project directory
sudo mkdir /srv/fsie-project
sudo chown fsieadmin:admins /srv/fsie-project
sudo chmod 770 /srv/fsie-project


Explanation: Only admins and authorized users can access; enforces principle of least privilege.

Step 4 — Sudo Privileges

Objective: Grant controlled administrative access to users.

# Edit sudoers safely
sudo visudo

# Add user
fsieadmin ALL=(ALL) NOPASSWD:ALL
devops3 ALL=(ALL) ALL


Explanation: fsieadmin can run any command without password (for automation), devops1 requires password — mimics controlled escalation.

Step 5 — Test Permissions

Objective: Validate access rights.

# Switch user and test
su - devops3
ls -l /srv/fsie-project   # Should be readable/writeable only for allowed users

su - fsieadmin
touch /srv/fsie-project/test.txt  # Should succeed

Step 6 — Document Users & Permissions

Objective: Maintain enterprise-grade audit trail.

# List users
cut -d: -f1 /etc/passwd

# List groups
cut -d: -f1 /etc/group

# List sudoers
sudo cat /etc/sudoers
