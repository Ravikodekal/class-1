#!/bin/bash

Discsize=$(df -h | awk 'NR==5{sub(/%/, "", $5); print $5}')
Ramsize=$(free -h | awk 'NR==3{sub(/M/, "", $3); print $3}')

if [ "${Discsize%?}" -gt 40 ]; then
    echo -e "The disk size is full\nThe percentage of usage is $Discsize%" | mail -s "Disk high usage" rvkode@gmail.com
fi

if [ "$Ramsize" -gt 260 ]; then
    echo -e "The RAM usage is high\nThe percentage of usage is $Ramsize%" | mail -s "RAM high usage" rvkode@gmail.com
fi


