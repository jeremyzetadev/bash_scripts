# Useful commands

ls -R                                                                       -> get all files recursive</br>
ls | rg ".txt"                                                              -> get files with rg</br>
ls | rg ".txt" | xargs cp -t PATH                                           -> get files with rg & copy files to path</br></br>

cat filelist.txt | xargs touch                                              -> read per line and create file what is on line</br>
rg -l "findtext" | xargs cp -t PATH                                         -> get files with rg & copy files to path</br>
rg -l "findtext" | xargs rm                                                 -> get files with rg & delete</br>
ls -r | grep "5" | xargs rm                                                 -> get files with ls rg & delete</br>
ls -r | grep "5" | xargs rm                                                 -> get files with ls rg & copy files to path</br>
cp -r origin/. dest                                                         -> copy all files within origin to des</br>
mv originfolder destfolder/                                                 -> move folder to a folder</br></br>

find . -iname "hello"</br>
find . -iname "*.txt"</br>
find | grep "5.txt" | xargs rm                                              -> delete all grep files found on subdirectory</br>
find | grep "4.txt" | xargs cp -t PATH                                      -> copy all grep files found on subdiretory</br></br>

ls -R | rg 'blue' -r 'red' ip.txt                                           -> get files with RG and replace</br>
grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'                    -> get matching text in a file and replace it all</br>
echo "append1  " | tee -a.txt                                               -> append to all files with .txt</br>

ps | awk '{print $1}'                                                       -> prints first column</br>
awk -F ":" '{print $1}' /etc/passwd                                         -> prints first column</br>
awk -F ":" '{print $1"\t"$6"\t"$7}' /etc/passwd                             -> prints first, sixth, seventh column</br>
awk -F 'BEGIN{FS=":"; OFS="-"} {print $1"\t"$6"\t"$7}' /etc/passwd          -> separtor of : replace with - column</br>
awk -F "/" '/^\// {print $NF}' /etc/shells                                  -> starts with / ※/^\//※ and print last field <br>
df awk '/\/dev\loop/ {print $1"\t"$2 + $3}' /etc/shells                     -> lines with /dev /loop print column1 add col2 & col3<br>
awk 'length($0) > 7' /etc/shells                                            -> print if whole line > 7<br>
ps -ef | awk '{ if($NF == "/bin/usr") print $0}'                            -> print line if last column is /bin/usr <br>
awk '{print substr($0, 4)}' filetest.txt                                    -> print line starting at index4<br>
