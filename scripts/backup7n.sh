#!/bin/bash

backup_folder="/home/ec2-user/backup_folder"
source_folder="/home/ec2-user/scripts"

cd "$backup_folder"

num=$(ls -l | grep -c '^-' )  


backup_filename="backup_$num.tar.gz"

tar -czf "$backup_filename" -C "$source_folder" .

echo "Backup created: $backup_filename"

