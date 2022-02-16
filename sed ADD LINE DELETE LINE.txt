#!/bin/bash

action=$1

addLineTop()
{
file=$1
line=$2
sed "1i $line" $file
}

addLineBottom()
{
file=$1
line=$2
sed "$ a ${line}" $file
}

addLineAt()
{
file=$1
linenumber=$2
line=$3
sed "$linenumber i $line" $file
}

updateFirstWord()
{
file=$1
word=$2
sed "0,/$word/s//Replacing/" $file
}

updateAllWords()
{
file=$1
word=$2
sed "s/$word/replacing/g" $file
}

deleteLine()
{
file=$1
line=$2
word=$3

if [ -z "$word" ] ;
then
sed "${line}d" $file
else
sed "/$word/d" $file
fi
}

insertWord()
{
file=$1
word1=$2
word2=$3
word_to_be_inserted=$4
#grep -o "$word1 $word2" $file |  awk '{print $1, $2}' OFS=" $word_to_be_inserted "
sed "s/$word1 $word2/$word1 $word_to_be_inserted $word2/" $file
}

case $action in

addLineTop ) addLineTop $2 "$3" ;;
addLineBottom ) addLineBottom $2 "$3";;
addLineAt ) addLineAt $2 $3 $4 ;;
updateFirstWord ) updateFirstWord $2 $3 ;;
updateAllWords ) updateAllWords $2 $3 ;;
deleteLine ) deleteLine $2 $3 $4 ;;
insertWord ) insertWord $2 $3 $4 $5 ;;
esac
