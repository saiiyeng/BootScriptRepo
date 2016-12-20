#!/bin/bash
touch /tmp/parablutestbootscript
touch parablutestbootscript001
mkdir saitest
date=`date`
echo " Start boot script test...$date" >> parablutestbootscript001
hostname=`/bin/hostname`
echo " AWS VM = $hostname" >> parablutestbootscript001
echo " End boot script test !" >> parablutestbootscript001
