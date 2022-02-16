#!/bin/bash

action=$1


trainer.template()
{
fname=$1
topic=$2

touch $fname
touch $topic

echo "$fname" >> $fname
echo "$topic" >> $topic

var1=`cat $fname | awk -F "=" '{print $2}'`
var2=`cat $topic | awk -F "=" '{print $2}'`

echo "$var1 is trainer of $var2"

rm $fname
rm $topic
}
memory.template()
{
process=$1
processid=$2
percentage=$3

touch $process
touch $processid
touch $percentage

echo "$process" >> $process
echo "$processid" >> $processid
echo "$percentage" >> $percentage

var1=`cat $process | awk -F "=" '{print $2}'`
var2=`cat $processid | awk -F "=" '{print $2}'`
var3=`cat $percentage | awk -F "=" '{print $2}'`

echo "$var1 with $var2 is consuming $var3 of memory"

rm $process
rm $processid
rm $percentage
}
case $action in
trainer.template ) trainer.template $2 $3 ;;
memory.template ) memory.template $2 $3 $4 ;;
esac
