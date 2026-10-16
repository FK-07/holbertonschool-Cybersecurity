#!/bin/bash
# 0-255 arası daxil edilən decimal ədədi 8-bitlik ikilik (binary) sistemə çevirir

# Arqumentin olub-olmadığını yoxlaya bilərik (istəyə görə)
num=$1
result=""

# 7-dən 0-a qədər bitləri sürüşdürərək yoxlayırıq (128, 64, 32, 16, 8, 4, 2, 1)
for ((i=7; i>=0; i--)); do
    bit=$(( (num >> i) & 1 ))
    result+="$bit"
done

echo "$result"
