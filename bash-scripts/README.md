# Scripts Bash
This folder contains my first Bash scripting exercices.
Each script is meant to automate simple task and reinforce my terminal mastery and shell programming.

## Scripts inclus

### `backup.sh`
A simple script that backs up a folder from a folder to another with timestamp.

**Features :**
- Use `date` to create a timestamped folder name
- Create automatically the folder if it don't exist
- Copy content recursively with `cp -r`

```bash
#!/bin/bash

SRC="/home/$USER/Documents/test"
DEST="/home/$USER/Documents/backup"
DATE=$(date +%Y-%m-%d-%H%M)

mkdir -p $DEST
cp -r $SRC "$DEST/backup-$DATE"

echo "Sauvegarde de $SRC effectuée dans $DEST/backup-$DATE"