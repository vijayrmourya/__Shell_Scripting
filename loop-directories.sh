#!/bin/bash

#loop through all the sub-directories in side a directory
dir_name="/*"
for dir in ${dir_name}
do
  echo "directory name/path: ${dir}"
done

for dir in $(find ${dir_name} -maxdepth 1 -type d)
do
  echo "directory name/path: ${dir}"
done
