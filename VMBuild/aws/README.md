# AWS CLI with Ansible

Example of building AWS instances using CLI to start the base VMs and Ansible to install the software and configuration.

An Ansible provisioner is required first to build everything else, but you can also build a Jenkins from your laptop.

The environment provisions 3 LBs each with 2 Web servers behind them.  One set of web servers is Wildfly.

Automated push
