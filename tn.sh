#!/bin/bash
# The above is known as 'hashbang' or 'shebang'. This alows the Bash shell to
# interpret the script as a Bash script.

# Simple note-taking script
# Author: hailuand

# Get date
date=$(date)

# Get topic
topic="$1"

# Filename to write to
file="${topic}notes.txt"

# Ask user for input
read -p "Your note:" note
# 'read' command reads in input from input stream

echo "$(date): $note" >> "$file"
# Braces around 'topic' means to use that variable concatenated with 'notes.txt'
echo "Note '$note' saved to file: ${file}"
# $1 is the first parameter passed into the script in the command line.
# $* represents all parameters passed into the script.
