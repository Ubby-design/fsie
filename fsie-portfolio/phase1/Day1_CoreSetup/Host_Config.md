# Hosts Configuration for FSIE Lab

This document describes the steps and rationale for configuring hostnames and local DNS mappings for the FSIE lab VMs.

---

## 1. Set the VM Hostname

#I had this configured on my vagrantfile, hence no need to run 'sudo hostnamectl set-hostname fsie-node1' command

# Example: Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "fsie-node1"
  config.vm.network "private_network", ip: "192.168.56.71"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = 2
  end
end

**Purpose:**

* Sets the system hostname of the VM to `fsie-node1`.
* Provides an identity for the VM in logs, monitoring, and SSH connections.

Verification:

```bash
hostname
hostnamectl
```

Actual output:

```
fsie-node1
```

---

## 2. Configure Local DNS Mapping (/etc/hosts)

Command:

```bash
echo "192.168.56.10 fsie-node1" | sudo tee -a /etc/hosts
```

**Purpose:**

* Maps the VM hostname to its IP address locally.
* Enables SSH and other services to use the hostname instead of the IP.
* Ensures consistent access in lab and multi-VM setups.

Safe append (avoid duplicates):

```bash
grep -qxF "192.168.56.10 fsie-node1" /etc/hosts || echo "192.168.56.10 fsie-node1" | sudo tee -a /etc/hosts
```

Verification:

```bash
cat /etc/hosts | grep fsie-node1
```

Actual output:

```
192.168.56.10 fsie-node1
```

---

## 3. SSH Connectivity

With hostname and `/etc/hosts` configured, SSH can be used via:

```bash
ssh vagrant@fsie-node1
```

* Passwordless login works if SSH keys are configured in `~/.ssh/authorized_keys`.
* Ensures enterprise-style secure SSH access.

---

**Summary:**

1. Set VM hostname to `fsie-node1`.
2. Map `fsie-node1` to its IP in `/etc/hosts`.
3. Use SSH keys for passwordless login.

This configuration mimics an enterprise SSH and DNS setup for lab VMs.
