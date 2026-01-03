#!/bin/bash
THRESHOLD=10
# У Git Bash відсоток часто знаходиться в 4-му або 5-му стовпці залежно від версії.
# Цей скрипт знаходить стовпець, що закінчується на %, і бере з нього число.
USAGE=$(df / | awk 'NR==2 {for(i=1;i<=NF;i++) if($i ~ /%/) print $i}' | sed 's/%//g')

if [ "$USAGE" -gt "$((100 - THRESHOLD))" ]; then
    echo "WARNING: Low disk space! Usage is at ${USAGE}%"
else
    echo "Disk space is OK: ${USAGE}% used."
fi