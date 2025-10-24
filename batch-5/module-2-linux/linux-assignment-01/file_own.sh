#!/bin/sh
# file_permissions.sh
# This script creates a directory and file, sets permissions, and verifies them.

# Define paths
HOME_DIR="$HOME"
PROJECT_DIR="$HOME_DIR/project"
REPORT_FILE="$PROJECT_DIR/report.txt"

# Create the directory
mkdir -p "$PROJECT_DIR"
echo "Created directory: $PROJECT_DIR"

# Create the file
touch "$REPORT_FILE"
echo "Created file: $REPORT_FILE"

# Set file permissions: 644 = rw-r--r--
chmod 644 "$REPORT_FILE"  # owner: read/write, group: read, others: read

# Set directory permissions: 755 = rwxr-xr-x
chmod 755 "$PROJECT_DIR"  # owner: read/write/execute, group: read/execute, others: read/execute

# Verify permissions
echo "Directory permissions:"
ls -ld "$PROJECT_DIR"

echo "File permissions:"
ls -l "$REPORT_FILE"

