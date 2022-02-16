#!/bin/bash

addnumber()
{
sum=0
for i in $@
do
sum=$(($i + $sum))
echo "Adding $i and result is $sum"
done
echo "Total Sum of ($@) is $sum"
}
addnumber $@
