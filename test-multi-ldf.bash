#!/bin/bash

data="/scratch3/ornl2016_vandle/micronet3/pixie16/ornl2016/ldf/rb"

name="seg4-AB-beta2"
cmd="zero\n"

for i in `seq 30 40`
do
    cmd=$cmd"file $data/094rb_14-$i.ldf\ngo\n"
   
done
cmd=$cmd"end\n"
echo -e $cmd | ./pixie_ldf_c $name

