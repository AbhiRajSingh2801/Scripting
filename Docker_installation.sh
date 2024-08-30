#!/bin/bash

# Update the package index
echo "Updating package index..."
sudo apt-get update -y

# Install prerequisites
echo "Installing prerequisites..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
echo "Adding Docker’s official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the Docker repository
echo "Setting up Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package index again after adding the Docker repository
echo "Updating package index again..."
sudo apt-get update -y

# Install Docker CE (Community Edition)
echo "Installing Docker CE..."
sudo apt-get install -y docker-ce

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Start and enable Docker service
echo "Starting and enabling Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the Docker group
echo "Adding the current user to the Docker group..."
sudo usermod -aG docker $(whoami)

# Print message to inform user to log out and log back in
echo "Docker installation complete. You may need to log out and log back in for group changes to take effect."

# Optionally, run a test Docker container to ensure it's working
echo "Running a test Docker container..."
sudo docker run hello-world

echo "Docker installation script completed successfully."
