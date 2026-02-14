
# Remediation

Correct static IP restored in Vagrantfile:

config.vm.network "private_network", ip: "192.168.56.71"

VM reloaded using:

vagrant reload
