
# SSH_config.md

## Step 1: Generate SSH-Key Pair

```bash
ssh-keygen -t ed25519 -C "fsie-lab-key"
```

#This creates two files in `~/.ssh`:

#1. `id_ed25519`   (Private key - Keep Secret)
#2. `id_ed25519.pub` (Public key - safe to share)

---

## Step 2: Move the public key to the VM

### Step 2.1: Copy the public key from the terminal

```bash
cat /c/Users/HP/.ssh/id_ed25519.pub
```

#Output example:

```
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPfivuVRWuJJHXK62NPOiKBPnVdVc351SPWT6qAAJw6F fsie-lab-key
```

### Step 2.2: Create `.ssh` folder on the VM

```bash
mkdir -p ~/.ssh
```

### Step 2.3: Assign permissions

```bash
chmod 700 ~/.ssh
```

### Step 2.4: Append the public key to `authorized_keys`

```bash
echo ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPfivuVRWuJJHXK62NPOiKBPnVdVc351SPWT6qAAJw6F fsie-lab-key >> ~/.ssh/authorized_keys
```

### Step 2.5: Assign permissions to `authorized_keys`

```bash
chmod 600 ~/.ssh/authorized_keys
```

### Step 2.6: Test the setup

```bash
exit   # leave the VM
ssh -i /c/Users/HP/.ssh/id_ed25519 vagrant@192.168.56.71
```

* The command works because the specific SSH private key is used instead of the default key or password.

---

## Step 3: Configure SSH shortcut on Git Bash

### Step 3.1: Open Git Bash

### Step 3.2: Ensure `.ssh` folder exists

```bash
mkdir -p ~/.ssh
```

### Step 3.3: Create/edit SSH config file

```bash
nano ~/.ssh/config
```

#Add the following:

```
Host fsie-node1
    HostName 192.168.56.71
    User vagrant
    IdentityFile /c/Users/HP/.ssh/id_ed25519
```

### Step 3.4: Save and exit the file

### Step 3.5: Set proper permissions for SSH to accept it

```bash
chmod 600 ~/.ssh/config
```

### Step 3.6: Connect using shortcut

```bash
ssh fsie-node1
```

* No need for `-i` or full IP, no need to type `vagrant@`

---

## Key Points

* VM only needs `authorized_keys`
* Client `~/.ssh/config` is a shortcut for convenience and lives on Git Bash
