#!/bin/bash

backup_source="/home/ec2-user/scripts"
backup_destination="/home/ec2-user/backup_folder"
backup_prefix="backup"
backup_count=0

# Get the current day of the week (0-6 where 0 is Sunday)
current_day=$(date +%w)


if [ "$current_day" -eq 0 ] || [ "$current_day" -eq 6 ]; then
    
    mkdir -p "$backup_destination"

    
    latest_backup=$(ls -1 "$backup_destination" | grep "^$backup_prefix-[0-9]*\.tar\.gz$" | sort -r | head -n 1)
    if [ -n "$latest_backup" ]; then
        backup_count=$(echo "$latest_backup" | sed "s/^$backup_prefix-\([0-9]*\)\.tar\.gz$/\1/")
        backup_count=$((backup_count + 1))
    fi

    # new backup file
    backup_filename="$backup_prefix-$backup_count.tar.gz"
    tar -czf "$backup_destination/$backup_filename" -C "$backup_source" .

    echo "Backup created: $backup_filename"
else
    echo "Today is not a weekend. No backup created."
fi

