#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

read -p "Please input a directory: " dir

if [ "${dir}" == "" -o ! -d "${dir}" ];then
   echo "This ${dir} is NOT exist in your system."
  exit 1
fi

filelist=$(ls ${dir})
for filename in ${filelist}
do 
  perm=""
  test -r "${dir}/${filename}" && perm="${dir} readable"
  test -r "${dir}/${filename}" && perm="${dir} writable"
  test -r "${dir}/${filename}" && perm="${dir} executable"
  echo "The file ${dir}/${filename}'s permission is ${perm}"

done

