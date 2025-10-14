#!/bin/bash

# file links: 

# Soft Links or Symbolic links or Symlink
# This is a special file in Linux which points to another file or a directory
# inode - original file - soft link
# Hard links

# Both file1.txt and file1_hard.txt have the same inode and link count.
# Editing file1_hard.txt changes file1.txt as well.
# Deleting one does not delete the data until all links are removed.

# Create a file
echo "Hello World" > file1.txt

# Create a hard link
ln file1.txt file1_hard.txt

# Check link count
ls -l file1.txt file1_hard.txt

# A symbolic link is like a shortcut.
# Points to the file name, not the inode.
# Can link to directories.
# Can cross file systems.

If the original file is deleted, the link becomes broken.

# Create a symbolic link
ln -s file2.txt file2_soft.txt

# Check link
ls -l file2_soft.txt


# | Feature                      | Hard Link      | Symbolic Link   |
# | ---------------------------- | -------------- | --------------- |
# | Points to                    | inode          | filename        |
# | Can link directories         | ❌              | ✅               |
# | Can cross filesystems        | ❌              | ✅               |
# | Affected if original deleted | ❌ (data stays) | ✅ (link broken) |
