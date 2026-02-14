

---

### **troubleshooting.md**

# Troubleshooting

## 1. Access VM via VirtualBox Console

- Login directly because SSH is blocked.

## 2. Inspect Logs

```bash
sudo tail -n 20 /var/log/auth.log

## Observed: sshd: Authentication failed for user

## 3. Inspect authorized_keys

cat ~/.ssh/authorized_keys

## Confirm wrong public key is present

