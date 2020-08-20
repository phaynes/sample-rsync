#!/bin/bash

# Start the run once job.
echo "Docker container has been started"

# Setup a cron schedule
echo "* * * * * /run.sh >> /var/log/cron.log 2>&1
# This extra line makes it a valid cron" > scheduler.txt

mkdir ~/in
mkdir ~/out
pwd
ls -las ./
crontab scheduler.txt
cron -f
