#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

function printit (){
  echo -n "Your choice is "
}

echo "This program will print your selection ! "

case ${1} in
"one")
  printit; echo "hahah ${1}" | tr 'a-z' 'A-Z'
;;
"two")
  printit; echo ${1} | tr 'a-z' 'A-Z'
;;
esac


