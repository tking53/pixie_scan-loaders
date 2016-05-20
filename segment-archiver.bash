#!/bin/bash

for i in {1..10}
do

file="094rb_14-seg-"$i"."
echo $file
filename=$file"tar"
tar -acvf $filename $file* #--remove-files
done



