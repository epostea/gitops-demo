#!/bin/bash

# Retrieve the YAML representation of the flagd-config ConfigMap
flagd_config=$(kubectl get configmap flagd-config -o yaml)

# Extract the value of the adServiceHighCpu feature flag from the YAML
ad_service_high_cpu=$(echo "$flagd_config" | grep adServiceHighCpu | awk '{print $2}')

# Print the value of the adServiceHighCpu feature flag
echo "The value of the adServiceHighCpu feature flag is: $ad_service_high_cpu"