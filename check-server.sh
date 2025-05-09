#!/bin/bash

# List of target servers
TARGETS=(
  "ec2-user@15.207.111.251"
  "ec2-user@3.110.175.0"
)

# Loop through each target and check NGINX status
for TARGET in "${TARGETS[@]}"; do
  echo "Checking NGINX status on $TARGET ..."
  ssh -o StrictHostKeyChecking=no "$TARGET" 'systemctl is-active nginx'
  echo "-----------------------------------"
done

