#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

usage=$(df / | tail -1 | awk '{print $5}' | tr -d '%')
threshold=80

echo "Disk usage: $usage%"

if [ "$usage" -ge "$threshold" ]
then
    echo -e "${RED}WARNING: Disk usage exceeds ${threshold}%${NC}"
else
    echo -e "${GREEN}OK: Disk usage is normal${NC}"
fi
