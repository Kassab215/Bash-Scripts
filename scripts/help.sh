echo op.sh is a tool that make basic operations on directories and files.
echo
echo "command line template : bash op.sh <command> <directory> <args>"
echo
echo -e "\t"Command "\t"  args  "\t\t" Description
echo 
echo
echo -e "\t" ana "\t\t" regex	"\t\t"	Analytics, followed by the regex which counts how many matches for the regex in the directory.
echo  
echo -e "\t" del "\t\t" file-size	"\t"	Delete, followed by the biggest file size. Files larger than that will be deleted.
echo 
echo -e "\t" arr "\t\t" file-type	"\t"	Arrange, followd by the file type, all the files with the given extension will be moved to a new directory.
