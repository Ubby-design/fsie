

---

### **remediation.md**


# Remediation

## 1. Empty the authorized_keys

```bash
echo "" > ~/.ssh/authorized_keys

## 2. Restore Correct Public Key

cp ~/.ssh/authorized_keys.bak ~/.ssh/authorized_keys
cat ~/.ssh/authorized_keys

## 3. Verify SSH Login

ssh fsie-node1

## Login successful
