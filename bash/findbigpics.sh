#!/bin/bash
# this script displays a count of the regular files in ~/Pictures
# it then displays the 3 largest files in ~/Pictures

cd ~/Pictures
echo -n "There are "
find . -type f |wc -l
echo " regular files in the ~/Pictures directory"
echo "The 3 largest files and their sizes in Kbytes are: "
find . -type f -exec du -s {} \; | sort -n | tail -3