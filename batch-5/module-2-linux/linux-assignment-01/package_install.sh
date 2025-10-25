#!/bin/sh
# package_install.sh

echo "=== Starting Package Installation Script ==="

# Step 1: Update package list
echo "Updating apt cache..."
sudo apt-get update -y

# Step 2: Install 'tree' package
echo "Installing 'tree'..."
sudo apt-get install -y tree

# Step 3: Install dependencies for Google Cloud SDK
echo "Installing prerequisites for Google Cloud SDK..."
sudo apt-get install -y apt-transport-https ca-certificates gnupg curl

# Step 4: Add Google Cloud SDK apt repository and key
echo "Adding Google Cloud SDK apt repository..."
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" \
    | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list > /dev/null

# Import Google Cloud public key
sudo mkdir -p /usr/share/keyrings
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg \
    | sudo gpg --dearmor --yes -o /usr/share/keyrings/cloud.google.gpg

# Step 5: Update and install the Google Cloud SDK
echo "Updating apt and installing Google Cloud SDK..."
sudo apt-get update -y
sudo apt-get install -y google-cloud-sdk

# Step 6: Verify installations
echo
echo "✅ 'tree' version:"
tree --version

echo
echo "✅ 'gcloud' version:"
gcloud --version

echo
echo "=== Package installation completed successfully! ==="
