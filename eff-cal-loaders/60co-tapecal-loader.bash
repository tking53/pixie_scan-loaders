#!/bin/bash

configdir="/home/tking/pixie_scan/config/ornl/OLTFvandle2016/analysis/"
datadir="/home/tking/data/postCals"

configfile="Config.xml.ThirdCal"

#ln -sf /home/tking/pixie_scan/pixie_ldf_c
#ln -sf $configdir$configfile Config.xml

name="60co-tape-test"

cmd="zero\nfile $datadir/60co_tapecal_00.ldf\ngo\n"



for i in `seq 1 9`
do
    cmd=$cmd"file $datadir/60co_tapecal_00-$i.ldf\ngo\n"

done
cmd=$cmd"end\n"
#echo -e $cmd

echo -e $cmd | ./pixie_ldf_c $name



#ln -sf /home/tking/pixie_scan/start.cmd


#for j in `ls -tr $data/60co_tapecal_00*`
#do
#    cmd=$cmd"file $j\ngo\n"
