#!/bin/bash

source /root/.bashrc
PATH=$PATH:/usr/local/sbin

if ! oc login -u system:admin | grep openshift
then
  echo "Failed to login to openshift, or missing projects"
  exit 1
fi

if ! oadm policy add-scc-to-user hostnetwork -z router
then
  echo "Failed to create router policy"
  exit 2
fi

if ! oadm router | grep Success
then
  echo "Failed oadm router"
  exit 3
fi

if ! oadm registry | grep Success
then
  echo "Failed to create registry"
  exit 4
fi
