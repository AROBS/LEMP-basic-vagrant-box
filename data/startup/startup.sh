#!/bin/sh
echo "Runing startup.sh..."

# Remove graylog2 "RUNNING_PID" file. 
# Sometimes when vagrant box is not properly shut down
# graylog2 server fails to remove this file and at next
# startup it wont start, because it finds this file.
rm -f /usr/local/graylog2-web-interface/RUNNING_PID

