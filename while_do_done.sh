#!/bin/bash
PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

while [ "${yn}" != "yes" -a "${yn}" != "YES" ]

do 
  read -p "Please input yes/YES to stop this program: " yn
done

echo "OK ! you input the correct answer ."

