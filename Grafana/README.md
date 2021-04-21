# Grafana training environment

This directory will allow you to create a Grafana training environment that uses PetClinic and MySQL Database to monitor.

# Building

To build the environment you will need to create your own **environment** by making a copy of the **environments** directory and modifying the variable values.  When you want to run the code you will do so via the **create** shell script and provide your environment directory as the argument.

Prior to running and after modifying the ansible variables in the environment you will also need to set the following SHELL variable **SSHKEY**.  This should be set to the Amazon SSH key you wish the instances to use.  You will also need to set AWSKEYPAIR to the name of the key pair stored in AWS for the region you are using.

Example;

```
export SSHKEY=~/.ssh/myawskey.pem
export AWSKEYPAIR=steveshilling
```
