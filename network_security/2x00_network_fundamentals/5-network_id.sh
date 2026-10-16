#!/bin/bash
IFS='.' read -r ip1 ip2 ip3 ip4 <<< "$1"; IFS='.' read -r m1 m2 m3 m4 <<< "$2"; echo "$((ip1 & m1)).$((ip2 & m2)).$((ip3 & m3)).$((ip4 & m4))"
