#!/bin/bash

action=$1

createfile()
{

file=$1	
touch $file

echo $filename

}

listpatternfile()
{
pattern=$1

ls -l | grep $pattern

}

show_descending()
{	

file=$1
line=$2
	
tac $file | head -$line

}

list_withsize()
{
path=$1

ls -sh $path

}

matching_line_no()
{
file=$1
pattern=$2

cat $file | grep -n $pattern $file
	 
delete_lineno()
{
file=$1
line=$2

sed -i "${line}d" $file
	  
}

count_no_of_line()
{

file=$1
wc -l $file

}

add_newline()

{  
file=$2
data=$2
  
grep -qxF "$data" $file || echo "$data" >> $file

}

addline_specific_line()
{
file=$1
line=$2
                               
sed "${line}a My name is badshah" $file

}

addLine_inend()
{
file=$1
line=$2

sed  -i "$ a $line" $filename

}

getline_no()
{
file=$1
line=$2

sed -n "${line} p" $file

}

getWord_lineNo()
{
file=$1
line=$2
	
sed "$line! d" $file

}
sync_dir()
{
source=$1
destination=$2

rsync -a --delete "${source}" "${destination}"
cpr $source $destination

}

move()
{
file=$1
destination=$2
	
mv $file $destination

}

create_dir()
{
dirname=$1

mkdir $dirname

}

remove_file()
{
file=$1

rm $file

}
remove_dir()
{

dirname=$1
rmdir $dirname

}

check_fileExist()
{
filepath=$1

if [ -f /$filepath ]
then
     echo "File exist"
else
     echo "File dosesnt exist"
fi

}

replace_content()
{
file=$1
replacing_word=$2
to_be_replaced=$3

sed "s/$replacing_word/$to_be_replaced/g" $file

}

search_and_replace()
{
file=$1
replacing_word=$2
to_be_replaced=$3

sed "s/$replacig_word/$to_be_replaced/g" $file

}

find_older_files()
{
directory=$1
old=$2

find $directory -type d -mtime +$old

}

delete_older_files()
{
directory=$1
old=$2

find $directory -mindepth 1 -mtime +$old -delete

}

delete_older_folders()
{

find ./dirc/* -mtime +x -type d -delete

}

case $action in
 
createfile ) createfile $file
;;
listpatternfile ) listpatternfile $pattern
;;
show_descending ) show_descending $file $line
;;
list_withsize ) list_withsize $path
;;
matching_line_no ) matching_line_no $file $pattern
;;
delete_lineno ) delete_lineno $file $line
;;
count_no_of_line ) count_no_of_line $file
;;
add_newline ) add_newline $file $data
;;
addline_specific_line ) addline_specific_line $file $line
;; 	 
addLine_inend ) addLine_inend $file $line
;;
getline_no ) getline_no $file $line 
;;
getWord_lineNo ) getWord_lineNo $file $line
;;
sync_dir ) sync_dir $source $destination
;;
move ) move $file $destination
;;
create_dir ) create_dir $dirname
;;
remove_file ) remove_file $file
;;
remove_dir ) remove_dir $fdirname
;;
check_fileExist ) check_fileExist $path
;;
replace_content ) replace_content $file $replacing_word $to_be_relaced
;;
search_and_replace ) search_and_replace $file $replacing_word $to_be_relaced
;;
find_older_files ) find_older_files $directory $old
;;
delete_older_files ) delete_older_files $directory $old
;;
delete_older_folders ) delete_older_folders 
;;
	 

esac
