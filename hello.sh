#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
if [ "${1}" == "hello" ];then
    echo "Hello,How are you?"
elif ["${1}" == ""];then
   echo "you must input paramters .ex> {${0} someword}"
else
  echo "The only param is hello, ex>{${0} hello}"
fi
