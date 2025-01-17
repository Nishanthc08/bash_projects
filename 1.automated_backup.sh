#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/home/boss/Desktop/isoimages"
DEST_DIR="/home/boss/Desktop/Backups"

# Create the backup filename with a timestamp
BACKUP_NAME="backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# Create the backup using tar and compress it
tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .

# Check if the backup was successful
if [ $? -eq 0 ]; then
	echo "Backup successful! File saved as $DEST_DIR/$BACKUP_NAME"
else
	echo "Backup failed!"
fi

# 1. Variables
# SOURCE_DIR - Directory that contains the files you want to backup
# DEST_DIR - Drectory where the backup file will be saved
# BACKUP_NAME - Generates a unique backup filename based on the current date and time using the date command.

# 2. Backup Creation
# tar -czf "$DEST_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" . - This command creates a tar.gz compressed archive of the contents of the SOURCE_DIR. The -C option makes tar change to the SOURCE_DIR before creating the archive.

# 3. Error Handling
# The if [ $? -eq 0 ] checks if the tar command was successful ($?) is the exit code of the last command). If successful, it prints a success message; otherwise, it prints an error message.
