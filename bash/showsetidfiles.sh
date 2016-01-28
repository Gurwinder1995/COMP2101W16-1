#!/bin/bash
# This script displays the setuid and setgid files found in /usr
# it displays them in two separate listings, and adds headers to
#   the output to make it more useful to the user

echo "Setuid files"
echo "============"
find /usr -type f -perm -4000 -ls
echo "Setgid files"
echo "============"
find /usr -type f -perm -2000 -ls 