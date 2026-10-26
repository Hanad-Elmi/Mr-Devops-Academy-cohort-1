
#!/bin/bash

echo "=================================="
echo "       SYSTEM RESOURCE MONITOR"
echo "=================================="

# Display memory usage
echo
echo "=== Memory Usage ==="
free -h

# Display process using the highest CPU
echo
echo "=== Highest CPU-Consuming Process ==="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 2

# Display top 5 CPU-consuming processes
echo
echo "=== Top 5 CPU Processes ==="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

# Display top 5 memory-consuming processes
echo
echo "=== Top 5 Memory Processes ==="
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6

echo
echo "=================================="
echo "Monitoring complete."