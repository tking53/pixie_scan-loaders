#!/bin/bash

data="/home/tking/data/postCals"



name="gated-bkg-postexp-1"
cmd="zero\nfile $data/bkg_after_exp_1.ldf\ngo\n"

for i in `seq 1 21`
do
    cmd=$cmd"file $data/bkg_after_exp_1-$i.ldf\ngo\n"
           
done
cmd=$cmd"end\n"
echo -e $cmd | ./pixie_ldf_c $name
