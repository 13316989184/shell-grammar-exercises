#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

function printit(){
 echo "Your choice is ${1}"
}

echo "This program will print your selection !"

case ${1} in
"one")
 printit 1 ;;
"two")
printit 2 ;;
esac
