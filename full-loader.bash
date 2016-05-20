#!/bin/bash

data="/scratch3/ornl2016_vandle/micronet3/pixie16/ornl2016/ldf/rb"
name="094rb_14-full"

cmd="zero\n"

for j in `ls -tr $data/094rb_14*`
do
    cmd=$cmd"file $j\ngo\n"
done
cmd=$cmd"end\n"

#echo -e $cmd

echo -e $cmd | ./pixie_ldf_c $name

#gzip $name.his


