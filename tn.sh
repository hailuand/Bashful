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

# Conditional expression:
# Tests on files and directories
# Tests on strings
# Arithmetic tests
# e.g. [[ $string ]] - True if not empty
# [[ $string = "something" ]] - true if $string equals "something"
# [[ $string="something" ]] - pitfall; always true! reads as one large concatenated string
# [[ -e $filename ]] - queries file $filename exists
# [[ -d $dirname ]] - queries dirname is a directory
# Whitespace is critical
if [[ $note ]]; then
  echo "$(date): $note" >> "$file"
  # Braces around 'topic' means to use that variable concatenated with 'notes.txt'
  echo "Note '$note' saved to file: ${file}"
  # $1 is the first parameter passed into the script in the command line.
  # $* represents all parameters passed into the script.
else
  echo "No input- note was not saved."
fi

# Conditionals
# if testcode; then
#   # foo_bar_baz
# else
#   # fail_foo_bar
# fi # Closing statement for conditional
