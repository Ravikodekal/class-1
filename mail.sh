#!/bin/bash

# Install mail-related commands (assumes you're using mailx)
sudo yum install -y mailx

# Email Configuration
recipient="rvkode@gmail.com"
subject="Test Email"
message="This is a test email sent from the shell script."

# Send the email
echo "$message" | mail -s "$subject" "$recipient"

echo "Email sent successfully."

exit 0


