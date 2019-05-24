#!/bin/bash
PATH=/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "now I will detect your linux server's services!"
echo -e "The www,ftp,ssh,and mail will be detect!\n"
testfile=/dev/shm/netstat_checking.txt
netstat -tuln > ${testfile}
testing=$( grep ":80 " ${testfile} )
if [ "${testing}" != "" ];then
   echo "www is running in your system."
fi
testing =$( grep ":22 " ${testfile} )
if [ "${testing}" != "" ];then
   echo "ssh is running in your system"
fi

testing =$( grep ":21 " ${testfile} )
if [ "${testing}" != "" ]; then
   echo "ftp is running in your system"
fi
