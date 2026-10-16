#!/bin/bash
for o in 0 8 16 24; do n=$(( $1 - o )); (( n < 0 )) && n=0; (( n > 8 )) && n=8; echo "scale=0; 255 - (255 / (2^$n))" | bc; done | paste -sd.
