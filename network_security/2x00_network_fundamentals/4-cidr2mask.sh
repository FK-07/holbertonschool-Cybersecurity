#!/bin/bash
for i in 0 8 16 24; do b=$(( $1 - i )); (( b >= 8 )) && v=255 || (( b <= 0 )) && v=0 || v=$(( (255 << (8 - b)) & 255 )); echo $v; done | paste -sd.
