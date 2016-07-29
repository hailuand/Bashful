#!/usr/bin/env bash

# Script creates new shell script, sets permissions, and more

# Is there an arg?
if [[ ! $1 ]]; then
  echo "Missing arg!"
  exit 1
fi

scriptname="$1"

desktop="${HOME}/Desktop/Personal Development/Bash"
filename="${desktop}/${scriptname}"
# Check if file filename exists
if [[ -e $filename ]]; then
  echo "File ${filename} already exists!"
  exit 1
fi

if type "$scriptname"; then
  echo "There already exists a command with name ${scriptname}"
  exit 1
fi

# Check if desktop bin directory exists
if [[ ! -d $desktop ]]; then
  # If not: create directory
  if mkdir "$desktop"; then
    echo "Created ${desktop}"
  else
    echo "Could not create ${desktop}"
    exit 1
  fi
fi

echo "End of shell script."
exit 0
