#!/bin/bash

data="/scratch3/ornl2016_vandle/micronet3/pixie16/ornl2016/ldf/rb"
nameS="094rb_14-seg-"
cmddir="/home/tking/programs/loaders/cmd-segmented"
ln -sf /home/tking/pixie_scan/pixie_ldf_c

for j in {1..10}
do
    name=$nameS$j
    echo $name
    echo "$(<$cmddir/cmd-$j.cmd)" | ./pixie_ldf_c $name
    gzip $name.his
done

unlink pixie_ldf_c
ln -sf /home/tking/pixie_scan/start.cmd
