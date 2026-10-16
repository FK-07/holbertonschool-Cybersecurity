#!/bin/bash
for i in 0 8 16 24; do s=$(( $1 - i )); (( s >= 8 )) && v=255 || (( s <= 0 )) && v=0 || v=$(( 255 ^ ((1 << (8 - s)) - 1) )); echo "$v"; done | paste -sd.
