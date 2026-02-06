# Useful commands

<code>ls -R                                                               -> get all files recursive</code></br>
<code>ls | rg ".txt"                                                      -> get files with rg</code></br>
<code>ls | rg ".txt" | xargs cp -t PATH                                   -> get files with rg & copy files to path</code></br></br>

<code>cat filelist.txt | xargs touch                                      -> read per line and create file what is on line</code></br>
<code>rg -l "findtext" | xargs cp -t PATH                                 -> get files with rg & copy files to path</code></br>
<code>rg -l "findtext" | xargs rm                                         -> get files with rg & delete</code></br>
<code>ls -r | grep "5" | xargs rm                                         -> get files with ls rg & delete</code></br>
<code>ls -r | grep "5" | xargs rm                                         -> get files with ls rg & copy files to path</code></br>
<code>cp -r origin/. dest                                                 -> copy all files within origin to des</code></br>
<code>mv originfolder destfolder/                                         -> move folder to a folder</code></br></br>

<code>find . -iname "hello"</code></br>
<code>find . -iname "*.txt"</code></br>
<code>find | grep "5.txt" | xargs rm                                      -> delete all grep files found on subdirectory</code></br>
<code>find | grep "4.txt" | xargs cp -t PATH                              -> copy all grep files found on subdiretory</code></br></br>

<code>ls -R | rg 'blue' -r 'red' ip.txt                                   -> get files with RG and replace</code></br>
<code>grep -rl 'windows' ./ | xargs sed -i 's/windows/linux/g'            -> get matching text in a file and replace it all</code></br>
<code>echo "append1  " | tee -a.txt                                       -> append to all files with .txt</code></br>

<code>ps | awk '{print $1}'                                               -> prints first column</code></br>
<code>awk -F ":" '{print $1}' /etc/passwd                                 -> prints first column</code></br>
<code>awk -F ":" '{print $1"\t"$6"\t"$7}' /etc/passwd                     -> prints first, sixth, seventh column</code></br>
<code>awk -F 'BEGIN{FS=":"; OFS="-"} {print $1"\t"$6"\t"$7}' /etc/passwd  -> separtor of : replace with - column</code></br>
<code>awk -F "/" '/^\// {print $NF}' /etc/shells                           -> starts with / ※/^\//※ and print last field</code><br>
<code>df awk '/\/dev\loop/ {print $1"\t"$2 + $3}' /etc/shells              -> lines with /dev /loop print column1 add col2 & col3</code></br>
<code>awk 'length($0) > 7' /etc/shells                                    -> print if whole line > 7</code></br>
<code>ps -ef | awk '{ if($NF == "/bin/usr") print $0}'                    -> print line if last column is /bin/usr</code></br>
<code>awk '{print substr($0, 4)}' filetest.txt                            -> print line starting at index4</code></br></br>

<code>find . -type f -exec sh -c 'echo -n "{}: "; wc -m < "$0"' {} backslash;</code>     -> number of characters in each file within a dir</br>
<code>awk -F ":" '{sum+= $2} END {print sum}' dump.txt</code>                            -> sum number of characters</br></br>
<code>grep 'export to' filesource.txt >> filename.txt</code>                                            -> get lines for 'export to' string</br>
<code>awk -F 'export to' '{print $2}' filename.txt | awk '{print $1}'</code>  -> get words after 'export to' | then get first word</br>         
</br></br>
%%%%%%%%%%%%%%%%%%%%%%%%%%% PIPING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%</br>
<code>find . -name "Filename*" -print (filename find in directory)</code>   </br>
<code>find . -name "Filename*" -print | xargs -wc l</code>   </br>
<code>rg -Hni "textfind" -C 10 | rg -Hni "nearTextfind" | awk '{print substr($1, 1, 15}' | uniq | sort</code>   </br>
