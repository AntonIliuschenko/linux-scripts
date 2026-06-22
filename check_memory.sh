#!/bin/bash
echo ""
echo "======= MEMORY CHECK ========="
echo ""
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
tot_mem=$(free -h | tail -2 | head -1 | awk '{print $2}') 
us_mem=$(free -h | tail -2 | head -1 | awk '{print $3}')
fr_mem=$(free -h | tail -2 | head -1 | awk '{print $4}')
THRESHOLD=80
used_perc=$(free | grep Mem | awk '{print int($3/$2 * 100)}')
echo "Total memory : $tot_mem"
echo "Used memory  : $us_mem"
echo "Free memory  : $fr_mem"
echo "Usage        : $used_perc%"
echo ""
if [ "$used_perc" -ge "$THRESHOLD" ]
then
	echo -e "${RED} WARNING:${NC} MEMORY USAGE IS "$used_perc" % "
else
	echo -e "${GREEN} OK,${NC} MEMORY USAGE IS "$used_perc"% "
fi
echo ""
