#!/bin/bash

puppetIP=$(awk -F"=" '$0 ~ /^puppet/ {print $2}' /vagrant/hosts  | grep -v '^[    ]*$')
puppetDNS=$(cat /vagrant/puppethost)
echo "puppetIP = $puppetIP" 1>&2
echo "puppetDNS = $puppetDNS" 1>&2

# Set hosts file;
cat >/etc/hosts <<_END_
127.0.0.1 localhost
# Add your AWS Puppet publicIP and internal DNS name here
$puppetIP $puppetDNS
_END_

# Install puppet PC1 on the VM
yum -y install https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum -y install puppet-agent
yum -y erase NetworkManager
systemctl restart network
systemctl enable network

cat >/etc/puppetlabs/puppet/puppet.conf <<_END_
[main]
server=$puppetDNS
environment=development
[agent]
report=true
_END_
