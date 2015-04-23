echo \|FILE\|ARCHIVED MD5\|RESTORED MD5\|cat files.txt | 
while read x; do echo \|$x\|$(grep $x arc.txt | awk '{print $9}')\|$(grep $x restore.txt | awk '{print $1}')\|; done
