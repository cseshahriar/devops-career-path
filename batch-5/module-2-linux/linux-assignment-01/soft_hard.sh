#!/bin/sh
# soft_hard.sh

HOME_DIR="$HOME"

# Create original.txt and a symlink
ORIGINAL="$HOME_DIR/original.txt"
SOFT="$HOME_DIR/softlink.txt"
echo "This is the original file for symlink test" > "$ORIGINAL"
echo "Created $ORIGINAL"

# Create symbolic link
ln -sf "$ORIGINAL" "$SOFT"
echo "Created symbolic link $SOFT -> $ORIGINAL"
ls -l "$SOFT"

# Delete the original file
rm -f "$ORIGINAL"
echo "Deleted original file $ORIGINAL"

# Verify and display the status of the symbolic link
echo "Status of symbolic link after deleting target:"
ls -l "$SOFT" || true
# show readlink target
readlink -f "$SOFT" || true

# Create datafile.txt and a hard link
DATA="$HOME_DIR/datafile.txt"
HARD="$HOME_DIR/hardlink.txt"
echo "Some data to test hard link" > "$DATA"
ln -f "$DATA" "$HARD"
echo "Created hard link $HARD -> $DATA"
ls -l "$DATA" "$HARD"

# Display inode of both files
echo "Inodes:"
stat -c '%n -> %i' "$DATA" "$HARD"

# Delete the original datafile
rm -f "$DATA"
echo "Deleted original data file $DATA"

# Verify and display the status of the hard link (should still contain data)
echo "Status of hard link after deleting original:"
ls -l "$HARD" || true
echo "Contents of hard link (should remain):"
cat "$HARD" || true

# Find all .txt files in the current user's home directory and save them in file_list.txt
find "$HOME_DIR" -maxdepth 1 -type f -name '*.txt' > "$HOME_DIR/file_list.txt"
echo "Saved list of .txt files in $HOME_DIR/file_list.txt"
ls -l "$HOME_DIR/file_list.txt"
