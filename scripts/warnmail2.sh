#!/bin/bash

ram_threshold=90  
disk_threshold=90  

send_email() {
    subject="System Resource Warning"
    message="Warning: High resource usage on the system.\n\nRAM Usage: $ram_usage%\nDisk Usage: $disk_usage%"
    echo -e "$message" | mail -s "$subject" rvkode@gmail.com.com
}

# system resource usage
ram_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2}')
disk_usage=$(df -h / | awk 'NR==2{printf "%.2f", $5}')

# Check if resource usage is above thresholds
if (( $(echo "$ram_usage >= $ram_threshold" | bc -l) )) || (( $(echo "$disk_usage >= $disk_threshold" | bc -l) )); then
    send_email
fi

