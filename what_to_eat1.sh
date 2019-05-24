#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

eat[1]="pingguo"
eat[2]="yali"
eat[3]="taozi"
eat[4]="liulian"

eatnum=4
eated=0
while [ "${eated}" -lt 3 ]; do
 #check=$((${RAMDOM}*${eatnum}/32767+1))
 check=$((${RANDOM} * ${eatnum}/32767 + 1))
 mycheck=0
 if [ "${eated}" -ge 1 ];then
   for i in $( seq 1 ${etead}] )
   do
     if [ ${eatdcon[$i]} == $check ];then
        mycheck=1
     fi
   done
 fi

 if [ ${mycheck} == 0 ];then
  echo "your may eat ${eat[${check}]}"
  echo $(( ${eated} + 1 ))
  eatedcon[${eated}]=${check}
 fi

done
