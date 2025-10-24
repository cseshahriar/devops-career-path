#!/bin/sh
# file_nav.sh
# List home dir, /var/log contents, show which bash and current shell.

HOME_DIR="$HOME"

# 1) List all contents of current user's home directory -> home_list.txt
ls -la "$HOME_DIR" > "$HOME_DIR/home_list.txt"
echo "Saved home directory listing to: $HOME_DIR/home_list.txt"

# 2) Change to /var/log, list contents -> var_log.txt (saved to user's home)
if [ -d /var/log ]; then
    (cd /var/log && ls -la) > "$HOME_DIR/var_log.txt"
    echo "Saved /var/log listing to: $HOME_DIR/var_log.txt"
else
    echo "/var/log does not exist on this system" > "$HOME_DIR/var_log.txt"
fi

# 3) Find and display the path to the bash executable using which
BASH_PATH="$(which bash 2>/dev/null || true)"
# Check if the variable is non-empty (-n means "string length > 0")
if [ -n "$BASH_PATH" ]; then
  echo "bash executable path: $BASH_PATH"
else
  echo "bash not found in PATH"
fi

# 4) Find and display the current shell
# $SHELL might be set; also show the current process's shell
echo "Current SHELL environment variable: ${SHELL:-(not set)}"
echo "Current shell process for this session: $(ps -p $$ -o args=)"
echo "Script execution completed."

