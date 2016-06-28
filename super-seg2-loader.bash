#!/bin/bash

configdir="/home/tking/pixie_scan/config/ornl/OLTFvandle2016/analysis/"
cmddir="/home/tking/programs/loaders/cmd-segmented"
datadir="/scratch3/ornl2016_vandle/micronet3/pixie16/ornl2016/ldf/rb"

nameS="094rb_14-seg-"

configfile="Config.xml.ThirdCal"

ln -sf /home/tking/pixie_scan/pixie_ldf_c
ln -sf $configdir$configfile Config.xml

for j in {04..06}
do
    name=$nameS$j
  #  echo $name
    echo "$(<$cmddir/cmd-$j.cmd)" | ./pixie_ldf_c $name
    gzip $name.his
done

#ln -sf /home/tking/pixie_scan/start.cmd
