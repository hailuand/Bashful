#!/bin/bash
# The above is known as 'hashbang' or 'shebang'. This alows the Bash shell to
# interpret the script as a Bash script.

# Simple note-taking script
# Author: hailuand

echo $(date): $* >> notes.txt
echo Note saved: $*
# $1 is the first parameter passed into the script in the command line.
# $* represents all parameters passed into the script.
