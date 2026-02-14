
# Symptoms Observed

After modifying the static IP:

## Observed Failures

- Ping to 192.168.56.71 failed
- SSH to 192.168.56.71 timed out
- Hostname resolution inconsistent

---

## Ping Failure

![Ping Failure](screenshots/02_ping_unreachable.png)

---

## SSH Timeout

![SSH Timeout](screenshots/03_ssh_timeout.png)

---

## Analysis

Failure occurs before authentication.
This indicates a network-layer issue.
