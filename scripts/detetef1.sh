#!/bin/bash
directory="/home/ec2-user/scripts"
current_date=$(date +%s)
four_weeks_ago=$((current_date - 2419200))

# Find files older than 28 days, sort by size, and process for deletion
find "$directory" -type f -mtime +28 -print0 | while IFS= read -r -d "" file; do
    file_size=$(stat -c %s "$file")
    echo "File: $file - Size: $file_size bytes"
done | sort -k7,7nr -k12,12 | while IFS= read -r line; do
    file=$(echo "$line" | awk '{print $2}')
    echo "Deleting: $file"
    rm "$file"
done

# Check if files are deleted
if [[ $? -eq 0 ]]; then
    echo "Files deleted successfully."
else
    echo "An error occurred while deleting files."
fi


