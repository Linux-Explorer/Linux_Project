#!/bin/bash

read -p "Enter username to check: " user

# Check if user exists in /etc/passwd
if grep -q "^$user:" /etc/passwd; then
    echo "User '$user' exists in the system."
else
    echo "User '$user' does NOT exist in the system."
fi
