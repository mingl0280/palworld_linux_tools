#!/bin/bash

# usage: create a crontab item to run this script.

# Define the directory to tar
# Please fill in absolute directory here.
DIRECTORY_TO_TAR="palworld/Pal/Saved"

# Define the base name for the tarball
TARBALL_BASE_NAME="palworld-save"

# Define the directory where the tarball will be saved
# Change this to the directory where you want to store your backups
BACKUP_DIRECTORY="backups"

#Number of saves to keep
NUMBER_OF_BACKUPS_TO_KEEP=600


if [ ! -d "$BACKUP_DIRECTORY" ]
then
	mkdir -p "$BACKUP_DIRECTORY"
fi

# Get current date and time in the specified format
CURRENT_DATETIME=$(date +"%Y-%m-%d_%H.%M.%S")

# Construct the tarball name
TARBALL_NAME="${TARBALL_BASE_NAME}_${CURRENT_DATETIME}.tar.gz"

# Create the tarball
tar -czvf "${BACKUP_DIRECTORY}/${TARBALL_NAME}" -C "${DIRECTORY_TO_TAR}" .

# Cleanup: Only keep the latest N backups
# Navigate to backup directory
cd "${BACKUP_DIRECTORY}"

# Delete older backups, only keep the latest N
# The sort order is reverse time (-t) and the files are listed one per line (-1)
# We skip the first N files (head -n ${NUMBER_OF_BACKUPS_TO_KEEP}) and delete the rest
ls -1t | tail -n +$((NUMBER_OF_BACKUPS_TO_KEEP+1)) | xargs -d '\n' rm -f --

echo "Backup and cleanup done. Only the latest ${NUMBER_OF_BACKUPS_TO_KEEP} backups are kept."