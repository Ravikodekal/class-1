#!/bin/bash`

directory="/home/ec2-user"

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Directory does not exist."
    exit 1
fi

# Find files modified more than 4 weeks ago
find "$directory" -type f -mtime +28 > tmp_files.txt

# Loop through each file and calculate its size
while read -r file; do
    size=$(du -h "$file" | awk '{print $1}')
    echo "$size $file" >> tmp_sizes.txt
done < tmp_files.txt

# Sort files by size in descending order
sort -rh -o tmp_sizes.txt tmp_sizes.txt

# Loop through sorted files and delete them
while read -r size file; do
    echo "Deleting $file (Size: $size)"
    rm "$file"
done < tmp_sizes.txt

# Clean up temporary files
rm tmp_files.txt tmp_sizes.txt

