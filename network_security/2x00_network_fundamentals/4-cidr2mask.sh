#!/bin/bash
for o in 0 8 16 24; do s=$(( $1 - o )); (( s <= 0 )) && v=0 || { (( s >= 8 )) && v=255 || v=$(( (255 << (8 - s)) & 255 )); }; echo "$v"; done | paste -sd.
