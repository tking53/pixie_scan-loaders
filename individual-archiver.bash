#!/bin/bash

file="094rb_14."
echo $file
filename=$file"tar"
tar -acvf $filename $file* #--remove-files

for i in {1..99}
do
file="094rb_14-"$i"."
echo $file
filename=$file"tar"
tar -acvf $filename $file* #--remove-files
done



