#!/bin/bash
PATH=${PATH}:~/bin
export PATH
echo "This program will try to calculate how many days you will demobilize"
read -p "Please input your demobilization date(ex->20100304):" date2
date_d=$(echo "$date2" | grep '[0-9]\{8\}') #判断输入日期是否为8位
if [ "date_d" == "" ]; then
echo "You input the wrong date format..."
exit 1
fi
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
