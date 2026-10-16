#!/bin/bash
IFS='.' read -r a b c d <<< "$1"; ip=$(( (a << 24) + (b << 16) + (c << 8) + d )); m=$(( 0xFFFFFFFF << (32 - $2) & 0xFFFFFFFF ))
net=$(( ip & m )); bcst=$(( net | (~m & 0xFFFFFFFF) )); f=$(( net + 1 )); l=$(( bcst - 1 ))
to_ip() { local i=$1; echo -n "$(( (i >> 24) & 255 )).$(( (i >> 16) & 255 )).$(( (i >> 8) & 255 )).$(( i & 255 ))"; }
printf "%s - %s" "$(to_ip $f)" "$(to_ip $l)"
