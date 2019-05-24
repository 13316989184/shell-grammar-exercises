#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

network="192.168.1"

for sitenu in $(seq 1 100)
do
 ping -c l -w l ${network}.${sitenu} &> /dev/null && result=0 || result=1
if [ "${result}" == 0 ]; then
  echo "server ${network}.${sitenu} is UP."
else
  echo "Server ${network}.${sitenu} is DOWN."
fi
done
###注意if 空格 等于号没有空格
