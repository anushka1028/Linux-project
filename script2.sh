#!/bin/bash
# Script 2: FOSS Package Inspector

echo "===== Script 2 Running ====="

echo "Enter package name (e.g. python3, vim, git):"
read PACKAGE

echo "Checking package..."

# Check if installed
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed ✅"
    dpkg -l | grep "$PACKAGE" | head -1
else
    echo "$PACKAGE is NOT installed ❌"
fi

# Case statement
case $PACKAGE in
    python3) echo "Python: powerful open-source programming language" ;;
    vim) echo "Vim: lightweight text editor" ;;
    git) echo "Git: version control system" ;;
    *) echo "General open-source software" ;;
esac