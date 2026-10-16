#!/bin/bash
traceroute -m 30 "$1" 2>/dev/null | tail -n +2 | grep -v '^\s*$' | wc -l
