#!/bin/bash

# Define the namespace and deployment name
namespace="default"
deployment_name="my-deployment"

# Get the pod name
pod_name=$(kubectl get pods -n $namespace -l app=$deployment_name -o jsonpath='{.items[0].metadata.name}')

# Check the pod status
kubectl get pod $pod_name -n $namespace

# Check the pod logs
kubectl logs $pod_name -n $namespace

# Check the events in the namespace
kubectl get events -n $namespace