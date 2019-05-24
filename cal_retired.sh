#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin

export PATH

echo "this is program will try to calculate :"

read -p "Please input your demobilization date: " date2

date_d=$(echo ${date2} | grep '[0-9]\{8\}')

if [ "$date_d" == "" ];then
   echo "you input the wrong date format..."
   exit
fi

#declare -i date_dem=$(date --date="$date2" +%s)
#declare -i date_now=$(date +%s)
#declare -i date_total_s=$((date_total_s/60/60/24))

#echo $date_total_s
#if [ "$date_total_s" -lt "0" ];then
#  echo "you had been demobilization before: " $((-1*date_d)) "ago"
#else
#  declare -i date_h=$(($((date_total_s-date_d*60*60*24))/60/60))
#  echo "yu will demobilkize after $date_d days and $date_h hours"
#fi
declare -i date_dem=$(date --date="$date2" +%s) #退伍日期秒数
declare -i date_now=$(date +%s) #当前日期秒数
declare -i date_tatal_s=$((date_dem-date_now)) #剩余秒数
declare -i date_d=$((date_total_s/60/60/24))
if [ $date_total_s -lt 0 ]; then
echo "You had been demobilized before: "$((-1*date_d))" ago"
else
declare -i date_h=$(($((date_total_s-date_d*60*60*24))/60/60))
echo "You will demobilize after $date_d days and $date_h hours."
fi

