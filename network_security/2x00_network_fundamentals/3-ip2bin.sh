#!/bin/bash
printf "%08d.%08d.%08d.%08d\n" $(echo "obase=2;$(tr '.' ';' <<< "$1")" | bc)
