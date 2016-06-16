#!/bin/bash

data="/home/tking/data/gamcal/FEB19-cal/"
ln -sf /home/tking/pixie_scan/Config.xml
ln -sf /home/tking/pixie_scan/pixie_ldf_c
#ln -sf $data
#name="FEB15-226ra"
#cmd226="zero\nfile $data/226ra_001.ldf\ngo\nend\n"

#echo -e $cmd226

#echo -e $cmd226 | ./pixie_ldf_c $name

name1="FEB15-60co"

cmd60="zero\nfile $data/060co_cal_00.ldf\ngo\nend\n"

#echo "--------------------------------"
#echo -e $cmd60

echo -e $cmd60 | ./pixie_ldf_c $name1


#name2="FEB15-bkg"

#cmdbkg="zero\nfile $data/bkg_001.ldf\ngo\nend\n"

#echo "--------------------------------"
#echo -e $cmd226

#echo -e $cmdbkg | ./pixie_ldf_c $name2

ln -sf /home/tking/pixie_scan/start.cmd


