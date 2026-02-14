
# Lab 3: Static IP Misconfiguration (Failure Injection Scenario)

## Objective

Simulate a static IP misconfiguration in a Vagrant-provisioned Ubuntu VM and analyze its impact on:

- DNS resolution
- SSH connectivity
- Cluster communication
- Host-to-VM reachability

---

## Baseline Working Configuration

```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.hostname = "fsie-node1"

  config.vm.network "private_network", ip: "192.168.56.71"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
end

#Expected IP: 192.168.56.71
#Hostname: fsie-node1

##Lab Phases:

#Inject Failure

#Observe Symptoms

#Troubleshoot

#Remediate

#Verify


## Failure Injection Screenshot

![Modified Static IP](failure_injection/screenshots/01_static_ip_modified.png)

## Symptoms Screenshots

![Ping Unreachable](symptoms/screenshots/02_ping_unreachable.png)
![SSH Time-out](symptoms/screenshots/03_ssh_timeout.png)

## Troubleshooting screenshots

![Check Authorized log](troubleshooting/logs/screenshots/04_auth_log_check.png)
![Static IP Mismatch](troubleshooting/network_checks/screenshots/05_ip_addr_mismatch.png)
![Host File Mismatch](troubleshooting/network_checks/screenshots/06_hosts_file_mismatch)

## Remediation Screenshots

![Restored Static IP](remediation/vagrantfile_restore/screenshots/07_static_ip_restored.png)
![Ping Successful](remediation/verify_connectivity/screenshots/08_ping_success.png)
![SSH successful](remediation/verify_connectivity/screenshots/09_ssh_success.png)



Final Status

✅ Failure injected
✅ Root cause confirmed
✅ Configuration restored
✅ Connectivity validated


























