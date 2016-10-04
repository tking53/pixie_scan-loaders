#!/bin/bash

configdir="/home/tieria/programs/pixie_scan/config/ornl/OLTFvandle2016/analysis/"
#cmddir="/home/tking/programs/loaders/cmd-segmented"
datadir="/home/tieria/097rb-data"

name="097rb_02-full-test"

configfile="Config.xml.97rb"


ln -sf /home/tieria/programs/pixie_scan/pixie_ldf_c
ln -sf $configdir$configfile Config.xml

cmd="zero\n"
cmd=$cmd"file $datadir/097rb_02.ldf\n"
cmd=$cmd"go\n"

for j in `seq 1 10`
do
cmd=$cmd"file $datadir/097rb_02-$j.ldf\n"
cmd=$cmd"go\n"

done

cmd=$cmd"end\n"
echo -e "$cmd"  | ./pixie_ldf_c $name
ln -sf /home/tieria/programs/pixie_scan/start.cmd
