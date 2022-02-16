#./FileManager.sh addDir /tmp dir1
#./FileManager.sh addDir /tmp dir2
#./FileManager.sh listFiles /tmp
#./FileManager.sh listDirs /tmp
#./FileManager.sh listAll /tmp
#./FileManager.sh deleteDir /tmp dir1

#./FileManager.sh addFile /tmp/dir1 file1.txt
#./FileManager.sh addFile /tmp/dir1 file1.txt "Initial Content"
#./FileManager.sh addContentToFile /tmp/dir1 file1.txt "Additional Content"
#./FileManager.sh addContentToFileBegining /tmp/dir1 file1.txt "Additional Content"
#./FileManager.sh showFileBeginingContent /tmp/dir1 file1.txt 5
#./FileManager.sh showFileEndContent /tmp/dir1 file1.txt 5
#./FileManager.sh showFileContentAtLine /tmp/dir1 file1.txt 10
#./FileManager.sh showFileContentForLineRange /tmp/dir1 file1.txt 5 10
#./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/
#./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
#./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/
#./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
#./FileManager.sh clearFileContent /tmp/dir1 file1.txt
#./FileManager.sh deleteFile /tmp/dir1 file1.txt


function addDir()
{
Path=$1
New_Directory_name=$2

mkdir ${Function}/${New_Directory_name}
echo "Directory Created in $Path as $New_Directory_name"

}

function listfiles()
{
Function=$1
Path=$2
New_Directory_name=$3

ls -l ${Path} | grep -v '^d'

}

function listDirs()
{
Path=$1
New_Directory_name=$2

ls -l ${Path} | grep '^d'

}

function listAll()
{
Path=$1
New_Directory_name=$2

ls -l ${Path}

}

function deleteDir()
{
Path=$1
New_Directory_name=$2

rm -rf ${Path}/${New_Directory_name}
echo "Deleting Directory $New_Directory_name"

}

function addFile()
{
Path=$1
Filename=$2
Message=$3

echo "cd ${Path} && touch ${Filename} && echo \"${Message}\" >> ${Filename} && cd "

}

function addContentToFile()
{
Path=$1
New_Directory_name=$2
Message=$3

cat > $Path/$New_Directory_name $filename 

}

function addContentToFileBegining()
{
Path=$1
New_Directory_name=$2
Message=$3

sed -i '1s/^/Adding text to beginning\n/' $Path/$New_Directory_name $Message

}

function showFileBeginingContent()
{
Path=$1
New_Directory_name=$2


head  -3 $Path/$New_Directory_name $filename

}

function showFileBeginingContent()

{
Path=$1
New_Directory_name=$2
filename=$3

head -3 $Path $filename

}

function showFileEndContent()
{
Path=$1
New_Directory_name=$2
filename=$3

tail -2 $Path/$New_Directory_name $filename 

}

function showFileContentAtLine()
{
Path=$1
New_Directory_name=$2
filename=$3

sed '2 !d' $Path/$New_Directory_name $filename

}    

function showFileContentForLineRange()
{
Path=$1
New_Directory_name=$2
filename=$3

sed '2,5 !d' $Path/$New_Directory_name $filename          

}

function moveFile()
{
Path=$1
Destination=$2

mv $Path $Destination

}

function copyFile()
{   
Path=$1
Destination=$2

cp  $Path $Destination

}

function clearFileContent()
{
Path=$1
filename=$2

truncate --size 0 $Path $filename  

}

function deleteFile()
{

Path=$1
filename=$2

rm  $Path $filename 

}
case ${Function} in

addDir ) addDir ${Path} ${New_Directory_name}
         ;;

listfiles ) listfiles ${Path}
         ;;

listDirs ) listDirs ${Path}
         ;;

listAll ) listAll ${Path}
         ;;

deleteDir ) deleteDir ${Path} ${New_Directory_name}
         ;;

addFile ) addFile ${Path} ${Filename} ${Message}
         ;;

addContentToFile ) addContentToFile ${Path} ${New_Directory_name} ${Message}
         ;;

addContentToFileBegining ) addContentToFileBegining ${Path} ${New_Directory_name} ${Message}
         ;;

showFileBeginingContent ) showFileBeginingContent ${Path} ${New_Directory_name}
	;;

showFileEndContent ) showFileEndContent ${Path} ${New_Directory_name}  ${line}
	;;

showFileContentAtLine ) showFileContentAtLine ${Path} ${New_Directory_name}  ${line}
	;;

showFileContentForLineRange ) showFileContentForLineRange ${Path} ${New_Directory_name}
	;;

moveFile ) moveFile ${Path} ${Destination}
	;;

copyFile ) copyFile ${Path} ${Destination}
	;;

clearFileContent ) clearFileContent ${Path} ${filename}
	;;

deleteFile ) deleteFile ${Path} ${filename}
	;;


esac

