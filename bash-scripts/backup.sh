#!/bin/bash

# Set the folder to back up
SRC="/c/Users/Paul/Documents/test"

# Set the backup destination folder
DEST="/c/Users/Paul/Documents/backup"

# Generate the current date in format YYYY-MM-DD-HHMM
DATE=$(date +%Y-%m-%d-%H%M)

# Create the backup destination folder if it doesn't exist
mkdir -p "$DEST"

# Copy the contents of the source folder to a new timestamped backup
cp -r "$SRC" "$DEST/backup-$DATE"

# Display a confirmation message
echo "Sauvegarde de $SRC faîtes dans $DEST/backup-$DATE"