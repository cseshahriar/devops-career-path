#!/bin/sh
# file_and_dir.sh
# Create linux_fundamentals, scripts subdir, example.txt, copy/move, permission change and verify.

# Define variables
HOME_DIR="$HOME"
LF_DIR="$HOME_DIR/linux_fundamentals"
SCRIPTS_DIR="$LF_DIR/scripts"
BACKUP_DIR="$LF_DIR/backup"
EXAMPLE="$LF_DIR/example.txt"
EXAMPLE_COPY="$SCRIPTS_DIR/example.txt"
EXAMPLE_BACKUP="$BACKUP_DIR/example.txt"

# Create directories
mkdir -p "$LF_DIR"
echo "Created directory: $LF_DIR"

# create subdirectory scripts
mkdir -p "$SCRIPTS_DIR"
echo "Created subdirectory: $SCRIPTS_DIR"

# create a example.txt file in linux_fundamentals
echo "This is an example file." > "$EXAMPLE"
echo "Created file: $EXAMPLE"

# Copy example.txt to scripts subdirectory
cp "$EXAMPLE" "$EXAMPLE_COPY"
echo "Copied $EXAMPLE to $EXAMPLE_COPY"

# Create backup directory and Move example.txt from linux_fundamentals/backup
mkdir -p "$BACKUP_DIR"
mv "$EXAMPLE" "$EXAMPLE_BACKUP"
echo "Moved $EXAMPLE to $EXAMPLE_BACKUP"

# Change permission of example.txt in scripts to read and write for the owner , and read-only for others
# 4 read, 2 write, 1 execute
#          user    group      other
# read:    y        y          y
# write:   y        n          n
# execute: n        n          n

chmod 644 "$EXAMPLE_COPY"
echo "Changed permissions of $EXAMPLE_COPY to read, write for owner, read-only for others"

# Verify the changes
echo "Verifying changes..."
ls -l "$EXAMPLE_COPY"
echo "Verification complete."

