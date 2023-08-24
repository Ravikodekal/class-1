#!/bin/bash

# Email configuration
recipient="rvkode@gmail.com"
subject="System Resource Warning"
from="rvkode@gmail.com"
smtp_server="smtp.gmail.com"
smtp_port="587"
smtp_username="rvkode@gmail.com"
smtp_password="lqqpijbjcikzugfp"

# Thresholds for warning messages
ram_warning_threshold=10
disk_warning_threshold=10

# Get system information
ram_usage=$(free -m | awk 'NR==2{print $3}')
ram_total=$(free -m | awk 'NR==2{print $2}')
ram_percent_used=$(( (ram_usage * 100) / ram_total ))

disk_usage=$(df -h / | awk 'NR==2{print $5}' | sed 's/%//')

# Check RAM usage
if [ "$ram_percent_used" -ge "$ram_warning_threshold" ]; then
    ram_warning="RAM usage is at $ram_percent_used%."
fi

# Check disk usage
if [ "$disk_usage" -ge "$disk_warning_threshold" ]; then
    disk_warning="Disk usage is at $disk_usage%."
fi

# Send email if warnings exist
if [ -n "$ram_warning" ] || [ -n "$disk_warning" ]; then
    message="System resource warnings:\n\n$ram_warning\n$disk_warning"
    echo -e "$message" | mail -s "$subject" -a "From: $from" -S smtp="smtp://$smtp_server:$smtp_port" -S smtp-auth=login -S smtp-auth-user="$smtp_username" -S smtp-auth-password="$smtp_password" "$recipient"
fi

