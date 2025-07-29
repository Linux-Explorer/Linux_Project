#!/bin/bash

read -p "Enter username to check and delete: " user

# Check if user exists
if grep -q "^$user:" /etc/passwd; then
    echo "User '$user' exists in the system."

    # Ask for confirmation before deleting
    read -p "Do you want to delete this user? (yes/no): " choice

    if [[ "$choice" == "yes" ]]; then
        # Delete the user (requires root privileges)
        sudo userdel -r "$user"
        
        if [ $? -eq 0 ]; then
            echo "User '$user' has been deleted successfully (including home directory)."
        else
            echo "Failed to delete user '$user'. You may need root privileges."
        fi
    else
        echo "Deletion cancelled."
    fi

else
    echo "User '$user' does NOT exist in the system."
fi
