#!/bin/bash
b=$(printf '%*s' "$1" "" | tr ' ' '1')$(printf '%*s' "$((32-$1))" "" | tr ' ' '0'); for o in {0,8,16,24}; do echo "ibase=2; ${b:$o:8}"; done | bc | paste -sd.
