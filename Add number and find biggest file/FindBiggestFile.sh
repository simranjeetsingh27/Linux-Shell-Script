#!/bin/bash

printingfileandsize()

{

for i in $@
do
size=`ls -sh $i | awk '{print $1}'`
echo "$i size is $size"
done
}

findbiggestfile()
{

filename=`ls -sh $@ | sort -s | head -1 | awk '{print $2}'`
echo "$filename is biggest file out of $@"
}

printingfileandsize $@
findbiggestfile $@
