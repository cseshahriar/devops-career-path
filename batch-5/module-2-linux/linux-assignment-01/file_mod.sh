#!/bin/sh
# file_mod.sh
# --------------------------------------------
# Task:
# 1. Create a file example.txt in the user's home directory.
# 2. Create a new user 'student' (without home and shell access).
# 3. Change the file owner to 'student'.
# 4. Change the file group to 'student'.
# 5. Verify and display the permission/ownership changes.
# --------------------------------------------

# Stop execution if any command fails or undefined variable used
set -euo pipefail

# Define file path
FILE="$HOME/example.txt"

# Step 1: Create example.txt in the current user's home directory
echo "This is an example file for permission modification." > "$FILE"
echo "✅ Created file: $FILE"

# Step 2: Create a new user named 'student' (no home directory, no shell)
# -M → do not create home directory
# -s /usr/sbin/nologin → set shell to nologin (no login access)
# Use 'sudo' since creating a user requires root privileges
if id "student" >/dev/null 2>&1; then
  echo "ℹ️ User 'student' already exists — skipping creation."
else
  sudo useradd -M -s /usr/sbin/nologin student
  echo "✅ Created user: student (no home, no shell)"
fi

# Step 3: Change ownership of the file to 'student'
sudo chown student "$FILE"
echo "✅ Changed owner of $FILE to 'student'"

# Step 4: Change the group of the file to 'student'
sudo chgrp student "$FILE"
echo "✅ Changed group of $FILE to 'student'"

# Step 5: Verify and display file permission and ownership
echo "🔍 Verifying file ownership and permissions..."
ls -l "$FILE"
echo "✅ Verification complete."
