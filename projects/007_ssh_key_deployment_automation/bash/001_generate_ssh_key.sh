#!/bin/bash

# Create ssh key pair for passwordless access

echo "================================" 
echo  "GENERATE SSH KEY PAIR"
echo "================================="

ssh-keygen -t rsa -b 4096

echo ""
echo "SSH key generated successfully..."
