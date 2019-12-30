#!/bin/bash

# Create internal
kubectl expose deployment/nginx --type="NodePort" --port 80 -n steve

# Create outside world
kubectl expose deployment/nginx --type="NodePort" --port 80 -n steve --name nginxext

# Create DNS path to PORT
PORT=$(kubectl get svc -n steve | grep nginxext | awk '{print $5}' | sed -e 's/^.*://' -e 's,/.*$,,')

# Create DNS route to service
echo "apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: nginx
spec:
  rules:
  - host: nginx.kube.grads.al-labs.co.uk
    http:
     paths:
     - path: /
       backend:
        serviceName: nginx-lb
        servicePort: $PORT" | kubectl -n steve apply -f -
