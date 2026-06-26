# Linux Scripts

Collection of Linux administration and monitoring scripts.

## Scripts

- check_disk.sh, check_disk_colored.sh
- check_memory.sh
- check_load.sh
- check_updates.sh
- user_audit.sh

## Purpose

Created as part of my Linux and DevOps learning journey.
# Check Disk Script

  A simple Bash script for monitoring disk usage on Linux systems.

 Features:
 - Checks root filesystem usage
 - Compares usage against a threshold
 - Displays warning messages
 - Supports colored output

## Usage:

 chmod +x check_disk.sh
 or colored ver. check_disk_col.sh
## To run
 ./check_disk.sh or ./check_disk_colored.sh

# Check Memory Script

A simple Bash script for monitoring memory usage on Linux systems.

## Features

* Displays total memory
* Displays used memory
* Displays free memory
* Calculates memory utilization percentage
* Compares memory usage against a defined threshold
* Shows a warning message when memory usage exceeds the threshold
* Supports colored output for better visibility

## Usage

Make the script executable:

```bash
chmod +x check_memory.sh
```

Run the script:

```bash
./check_memory.sh
```

## Example Output

```text
======== MEMORY CHECK ========

Total memory : 62Gi
Used memory  : 7.7Gi
Free memory  : 41Gi
Usage        : 12%

OK, MEMORY USAGE IS 12%
```

## Purpose

This script was created as part of my Linux and DevOps learning journey. It helps administrators quickly check memory utilization and identify potential resource issues without manually analyzing command output.

---

# Check Load Script

## Description

This script monitors the Linux system load average and compares the current 1-minute load average with a predefined threshold.

It displays:

* Current system uptime
* Load average for the last 1, 5 and 15 minutes
* System status (OK or WARNING)

## Features

* Displays current uptime
* Displays 1, 5 and 15-minute load averages
* Compares the current load average against a threshold
* Prints a warning when the threshold is exceeded
* Uses colored output for better readability

## Example Output

```text
============ UTILIZATION CHECK ============

Current uptime: 15:31:26

--------------------------

Load average:
1 min: 2.77
5 min: 2.68
15 min: 2.47

Status: OK
```

## Usage

```bash
chmod +x check_load.sh
./check_load.sh
```
