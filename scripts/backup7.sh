#!/bin/bash
date_seven_days_ago=$(date -d '7 days ago' +'%Y-%m-%d')

tar --newer "$date_seven_days_ago" -zcf thisweek.tgz ./

echo "Archive created: thisweek.tgz"

