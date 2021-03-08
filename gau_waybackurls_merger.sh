#!/bin/bash

if [ $# -eq 0 ]; then
	echo "No domain provided"
    echo "Usage: gau_waybackurls_merger.sh domain.com"
    exit 1
fi

echo "$1" | gau > $1_gau.txt
echo "$1" | waybackurls > $1_wbu.txt

sort -u  $1_gau.txt $1_wbu.txt > $1_resulting.txt
