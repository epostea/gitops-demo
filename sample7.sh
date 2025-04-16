#!/bin/bash

# Use the command kubectl get pods to view the status of all Pods in the Deployment
kubectl get pods

# Look for any Pods with a status other than "Running"
 pods=$(kubectl get pods | grep -v Running | awk '{print $1}')

# If there are any, investigate the cause and address it accordingly
if [ -n "$pods" ]; then
  for pod in $pods; do
    echo "Investigating pod $pod"
    # Add your investigation and resolution steps here
  done
else
  echo "All pods are running"
fi