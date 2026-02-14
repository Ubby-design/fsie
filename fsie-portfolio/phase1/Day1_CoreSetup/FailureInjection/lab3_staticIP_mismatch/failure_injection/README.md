

------------------------------------------------------------

# 📁 failure_injection/README.md

# Failure Injection

## Goal

Introduce a static IP misconfiguration by modifying the Vagrantfile.

---

## Modification Performed

Original:

config.vm.network "private_network", ip: "192.168.56.71"

Modified to:

config.vm.network "private_network", ip: "192.168.56.99"

VM reloaded using:

vagrant reload

---

## Screenshot Evidence

![Static IP Modified](screenshots/01_static_ip_modified.png)

---

## Expected Impact

- Host attempts to reach 192.168.56.71
- VM now bound to 192.168.56.99
- Hostname resolution mismatch
- SSH failure
