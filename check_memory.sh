#!/bin/bash

tot_mem=$(free -h | tail -2 | head -1 | awk '{print $2}') 
us_mem=$(free -h | tail -2 | head -1 | awk '{print $3}')
fr_mem=$(free -h | tail -2 | head -1 | awk '{print $4}')
Alrm=80
mem_line=$(free -h | grep 'Mem')
echo $mem_line
echo "Total memory - $tot_mem"
echo "Used memory - $us_mem"
echo "Free memory - $fr_mem"
