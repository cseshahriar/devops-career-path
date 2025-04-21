#!/bin/bash

# Exit on any error
set -e

# Function to print messages
print_message() {
  echo -e "\n\033[1;32m$1\033[0m\n"
}

# Update and upgrade system
print_message "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Install prerequisites
print_message "Installing prerequisites..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker GPG key
print_message "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
print_message "Adding Docker repository..."
sudo bash -c "echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable' > /etc/apt/sources.list.d/docker.list"

# Update package index
print_message "Updating package index..."
sudo apt update

# Install Docker
print_message "Installing Docker Engine..."
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Optional: Add current user to the docker group
print_message "Adding the current user to the Docker group..."
sudo usermod -aG docker $USER

# Verify Docker installation
print_message "Verifying Docker installation..."
docker --version

# Test Docker
print_message "Testing Docker with the hello-world container..."
sudo docker run hello-world

print_message "Docker installation completed successfully! Please log out and log back in for the group changes to take effect."
