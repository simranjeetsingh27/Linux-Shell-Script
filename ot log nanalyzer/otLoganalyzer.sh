#!/bin/bash

source samplelogfile

action=$1

IP()
{
awk '{print $1}' samplelogfile | sort | uniq -c | awk '{print $2" : " $1}'
}

requestType()
{     
awk -F " " '{print $6}' $samplelogfile 
}
	
response()
{     
awk -F " " '{print $9}' $samplelogfile 
}

responseTypeBySize()
{     
awk -F " " '{print $20}' $samplelogfile |sort |uniq -c
}

ResponseTypeByTime()
{
awk -F " " '{print $4}' $samplelogfile |sort |uniq -c
}


case $Action in 

IP ) IP 
;;
requestType ) requestType
;;
responseTypeBySize ) responseTypeBySize
;;
ResponseTypeByTime ) ResponseTypeByTime 
;;
sponse  ) response 
;;
esac
