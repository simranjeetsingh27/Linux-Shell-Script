#!/bin/bash

action=$1

topProcess()
{
line=$1
process=$2
line1=$(($line + 1 ))
if [ $process == "memory" ]
then
top -b -o +%MEM | sed -n '7,$p' | head -n $line1
else
top -b -o +%CPU | sed -n '7,$p' | head -n $line1
fi
}

killLeastPriorityProcess()
{
ps -N | tail -10 
}

RunningDurationProcess()
{
process=$1

if [[ "$process" =~ ^[0-9]+$ ]] ;
then
var1=`echo $?`
else
var2=`echo $?`
fi

if [ "$var1" == 0 ] ;
then
ps -p "$process" -o etime
exit
fi
if [ -n "$var2" ] ;
then
var3=`pidof "$process"`
ps -p $var3 -o etime
fi

}


listOrphanProcess()
{
ps -elf | head -1; ps -elf | awk '{if ($5 == 1) {print $0}}'
}

listZoombieProcess()
{
top -n 10 | grep zombie
}

killProcess()
{
process=$1
  
if [[ $var == "^[0-9]+$" ]]; then
        kill -9 $var      
else
        pkill -f $var        
    fi

}

case $action in

topProcess ) topProcess $line $meory/$cpu
;;
killLeastPriorityProcess ) killLeastPriorityProcess 
;;
RunningDurationProcess ) RunningDurationProcess "$process"
;;
listOrphanProcess ) listOrphanProcess 
;;
listZoombieProcess ) listZoombieProcess 
;;
killProcess ) killProcess $process
;;

esac
