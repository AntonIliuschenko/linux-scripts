#!/bin/bash
echo ""
echo "============ SYSTEM LOAD CHECK ============"
echo ""
UPTIME=$(uptime | awk '{print $1}')
one_min=$(uptime | awk '{print $8}'| tr -d ",")
five_min=$(uptime | awk '{print $9}'| tr -d ",")
fifteen_min=$(uptime | awk '{print $10}'| tr -d ",")
THRESHOLD=4.0
echo "Current uptime: $UPTIME"
echo "--------------------------"
echo "Load average:"

echo "1 min: $one_min"
echo "5 min: $five_min"
echo "15 min: $fifteen_min"
if awk "BEGIN {exit !($one_min > $THRESHOLD)}"
then
    echo "WARNING"
else
    echo "OK"
fi
