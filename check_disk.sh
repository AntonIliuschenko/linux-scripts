#!/bin/bash

usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
threshold=80

if [ "$usage" -ge "$threshold" ]
then
	echo "WARNING"
else
	echo "It's OK, Disk usage is $usage"%" "
fi
