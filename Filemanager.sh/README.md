
# Assigment1

This assignment is based on linux user management and file system.
## Authors

- Simranjeet Singh
## Documentation

Create a utility(FileManager.sh) that will be able to
-Create a Directory
-List Content of a Directory
-Only listfiles in a Directory
-Only listDirs in a Directory
-listAll(files and directory)
-Delete a Directory


i.e.
./FileManager.sh addDir /tmp dir1
./FileManager.sh addDir /tmp dir2
./FileManager.sh listFiles /tmp
./FileManager.sh listDirs /tmp
./FileManager.sh listAll /tmp
./FileManager.sh deleteDir /tmp dir1



Update FileManager to process Files as well
-Create a file
-Add content to file
-Add conent at the begining of the file
-Show top n lines of a file
-Show last n lines of a file
-Show contents of a specific line number
-Show conteint of a specfific line number range
-Move/Copy file from one location to another
-Delete file


i.e.
./FileManager.sh addFile /tmp/dir1 file1.txt
./FileManager.sh addFile /tmp/dir1 file1.txt "Initial Content"
./FileManager.sh addContentToFile /tmp/dir1 file1.txt "Additional Content"
./FileManager.sh addContentToFileBegining /tmp/dir1 file1.txt "Additional Content"
./FileManager.sh showFileBeginingContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileEndContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileContentAtLine /tmp/dir1 file1.txt 10
./FileManager.sh showFileContentForLineRange /tmp/dir1 file1.txt 5 10
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/
./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
./FileManager.sh clearFileContent /tmp/dir1 file1.txt
./FileManager.sh deleteFile /tmp/dir1 file1.txt

Note: First have to do with ad-hoc command and then go to utility


