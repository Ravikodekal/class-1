source_dire#!/ctory="/home/ec2-user"  
backup_directory="/home/ec2-user/backup"  

# Check if the source directory exists
if [ ! -d "$source_directory" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# Check if the backup directory exists, if not, create it
if [ ! -d "$backup_directory" ]; then
    mkdir -p "$backup_directory"
fi

# Get the current date and time
current_date=$(date +"%Y-%m-%d")
week_number=$(date +"%U")

# Create the backup filename
backup_filename="backup-$week_number.tar.gz"

# Create the backup
tar -czf "$backup_directory/$backup_filename" -C "$source_directory" .

echo "Backup created: $backup_filename"
