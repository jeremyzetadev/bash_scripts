# Useful commands

ls -R                                                                       -> get all files recursive
ls | rg ".txt"                                                              -> get files with rg
ls | rg ".txt" | xargs cp -t PATH                                           -> get files with rg & copy files to path

cat filelist.txt | xargs touch                                              -> read per line and create file what is on line
rg -l "findtext" | xargs cp -t PATH                                         -> get files with rg & copy files to path
rg -l "findtext" | xargs rm                                                 -> get files with rg & delete
ls -r | grep "5" | xargs rm                                                 -> get files with ls rg & delete
ls -r | grep "5" | xargs rm                                                 -> get files with ls rg & copy files to path
cp -r origin/. dest                                                         -> copy all files within origin to des
mv originfolder destfolder/                                                 -> move folder to a folder

find . -iname "hello"
find | grep "5.txt" | xargs rm                                              -> delete all grep files found on subdirectory
find | grep "4.txt" | xargs cp -t PATH                                      -> copy all grep files found on subdiretory

ls -R | rg 'blue' -r 'red' ip.txt                                           -> get files with RG and replace
grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'                    -> get matching text in a file and replace it all
echo "append1  " | tee -a.txt                                               -> append to all files with .txt
