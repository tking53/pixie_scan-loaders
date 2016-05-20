#!/bin/bash

data="/scratch3/ornl2016_vandle/micronet3/pixie16/ornl2016/ldf/rb"



name0="094rb_14"
cmd0="zero\nfile $data/094rb_14.ldf\ngo\nend\n"

echo -e $cmd0 | ./pixie_ldf_c $name0

gzip $name0.his

for i in `seq 1 99`
do
    name="094rb_14-$i"
    cmd="zero\nfile $data/094rb_14-$i.ldf\ngo\nend"
    
    echo -e $cmd | ./pixie_ldf_c $name
    
    gzip $name.his
    
done


