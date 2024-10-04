#!/bin/bash

# Update package list
UPDATE_OUTPUT=$(sudo apt update)

# Check if the output contains "All packages are up to date."
if echo "$UPDATE_OUTPUT" | grep -q "All packages are up to date."; then
    echo "All packages are up to date. No further actions needed."
else
    echo "Packages need updating. Proceeding with upgrades..."

    # Upgrade all packages
    sudo apt upgrade -y

    # Install upgradable packages
    sudo apt list --upgradable | grep -v "Listing..." | cut -f1 -d"/" | xargs sudo apt-get install -y

    # Remove unnecessary packages
    sudo apt autoremove -y
fi

# Clear the terminal
clear
