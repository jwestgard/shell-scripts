#!/bin/bash

for file in "$@";
do
  fileinfo=`ls -sgm "$file"`	  
  checksum=`md5 -q "$file"`
  echo -e "$fileinfo \t $checksum"
done