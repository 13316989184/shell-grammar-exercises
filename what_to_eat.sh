#!/bin/bash

PATH=/bin:/sin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

eat[1]="pingguo"
eat[2]="yali"
eat[3]="zhaji"
eat[4]="mifan"

eatnum=3
check=$((${RANDOM} * ${eatnum}/32767 + 1))

echo "your may eat ${eat[${check}]}"


