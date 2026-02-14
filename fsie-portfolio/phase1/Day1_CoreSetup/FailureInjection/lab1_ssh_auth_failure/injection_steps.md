
# Injection Steps

## 1. Backup Verification

```bash
ls -l ~/.ssh/authorized_keys.bak
cat ~/.ssh/authorized_keys.bak

## 2. Generate Wrong Key pair

ssh-keygen -t ed25519 -f ~/wrong_key -N ""
cat ~/wrong_key.pub

## 3. Inject Failure

echo "" > ~/.ssh/authorized_keys
cat ~/wrong_key.pub > ~/.ssh/authorized_keys

## Atempted login from Git Bash failed
