#!/bin/bash

# Get the status of the DaemonSet
daemonset_status=$(kubectl get daemonset <daemonset-name> -o jsonpath='{.status}')

# Check if any replica Pods are missing
if [[ $daemonset_status == *"ReplicaSet/*" ]]; then
  echo "One or more replica Pods are missing"
else
  echo "All replica Pods are running"
fi