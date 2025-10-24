#!/usr/bin/env bash
# user_mod.sh

# Step 1: Create a new user named developer (if not already exists)
if id -u developer >/dev/null 2>&1; then
  echo "User 'developer' already exists — skipping creation"
else
  echo "Creating user 'developer' with home /home/developer_home and shell /bin/sh"
  sudo useradd -m -d /home/developer_home -s /bin/sh developer
fi

echo "Developer user info (before rename):"
getent passwd developer || true
id developer || true

# Step 2: Change username developer -> devuser (if not already changed)
if id -u devuser >/dev/null 2>&1; then
  echo "User 'devuser' already exists — skipping rename"
else
  echo "Renaming user 'developer' -> 'devuser'"
  sudo usermod -l devuser developer || true

  # Also update the home directory name if exists (optional)
  if [ -d /home/developer_home ]; then
    sudo usermod -d /home/devuser_home -m devuser || true
  fi
fi

# Step 3: Add devuser to group devgroup (create group if needed)
if getent group devgroup >/dev/null 2>&1; then
  echo "Group 'devgroup' already exists"
else
  echo "Creating group 'devgroup'"
  sudo groupadd devgroup
fi

echo "Adding devuser to devgroup"
sudo usermod -aG devgroup devuser

# Step 4: Set password of devuser to devpass
echo "Setting password for 'devuser' (non-interactive)"
echo "devuser:devpass" | sudo chpasswd

# Verify and display the developer/devuser information
echo "User info (after changes):"
getent passwd devuser || true
echo "id and groups:"
id devuser || true
