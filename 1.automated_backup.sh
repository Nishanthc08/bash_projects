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
