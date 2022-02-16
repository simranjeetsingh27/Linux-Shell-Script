#!/bin/bash

action=$2

t1()
{

local size=$1
rows=$(($size + 1))
for ((i=1; i<=$size; i++))
 do
  for ((j=1; j<=$size; j++))
   do
    if [ $j -ge $(($rows - $i)) ] ;
     then
        echo -n "* "
    else
        echo -n "  "
     fi
    done
  echo
done

}

t2()
{

local size=$1
for((i=1; i<=$size; i++))
 do
  for((j=1; j<=i; j++))
   do
    echo -n "* "
   done
 echo
done

}

t4()
{

local rows=$1
for((i=$rows; i>=1; i--))
 do
  for((j=1; j<=i; j++))
   do
    echo -n "* "
   done
 echo
done

}

t3()
{

local rows=$1
for((i=1; i<=$rows; i++))
 do
  for((j=1; j<=$rows - i; j++))
   do
    echo -n "  "
     done
      for((j=1; j<=2*i - 1; j++))
       do
        echo -n "* "
       done
   echo
 done

}

t6()
{

local rows=$1
for((i=$rows; i>=1; i--))
 do
  for((j=1; j<=$rows - i; j++))
   do
    echo -n "  "
     done
      for((j=1; j<=2*i - 1; j++))
       do
        echo -n "* "
       done
   echo
 done

}

t5()
{

local size=$1
rows=$(($size + 1))
for ((i=$size; i>=1; i--))
 do
  for ((j=1; j<=$size; j++))
   do
    if [ $j -ge $(($rows - $i)) ] ;
     then
        echo -n "* "
    else
        echo -n "  "
     fi
    done
  echo
done

}

t7()
{

local rows=$1
for((i=1; i<=$rows; i++))
 do
  for((j=1; j<=$rows - i; j++))
   do
    echo -n "  "
     done
      for((j=1; j<=2*i - 1; j++))
       do
        echo -n "* "
       done
   echo
 done
for((i=$rows-1; i>=1; i--))
 do
  for((j=1; j<=$rows - i; j++))
   do
    echo -n "  "
     done
      for((j=1; j<=2*i -1; j++))
       do
        echo -n "* "
       done
   echo
 done

}

case $action in
t1 ) t1 $1 $2 ;;
t2 ) t2 $1 $2 ;;
t3 ) t3 $1 $2 ;;
t4 ) t4 $1 $2 ;;
t5 ) t5 $1 $2 ;;
t6 ) t6 $1 $2 ;;
t7 ) t7 $1 $2 ;;
esac
