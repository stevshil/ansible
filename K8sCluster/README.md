# Kubernetes Cluster Build

This repository makes use of the Ansible code from https://github.com/kubernetes-sigs/kubespray.

- This was originally tested with the 370a0635fae8b4904bb6bf7936884195d1ab327f (v2.12.0)
- Run the following to ensure you are using the correct version of kubespray;
  - ```git clone https://github.com/kubernetes-sigs/kubespray```
  - ```git checkout v2.12.0```

The Kubespray code requires you to have your systems already built, so this code will create your requested number of VMs to launch and then create the hosts file for kubespray to run.

Best created in AWS using AMI Amazon Linux 2 AMI (HVM), SSD Volume Type
