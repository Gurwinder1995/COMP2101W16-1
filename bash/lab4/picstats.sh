#!/bin/bash
# this script displays how many files are in ~/Pictures,
#    how much space they use,
#    and the sizes and names of the 3 largest files

echo "The `find ~/Pictures -type f | wc -l` files in the ~/Pictures directory use:"
du -sh ~/Pictures
echo

echo "The 3 largest files in the ~/Pictures directory are:"
cd ~/Pictures
find . -type f -exec du -h {} \; | sort -h | tail -3