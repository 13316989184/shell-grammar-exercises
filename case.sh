#!/bin/bash

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export "This program will print your selection !"
case ${1} in
"one")
  echo "your choice is ONE"
  ;;
"two")
  echo "your choice is TWO"
  ;;
"three")
  echo "your choice is THREE"
 ;;
*)
  echo "Usage ${0} {one|two|three}"
 ;;
esac



