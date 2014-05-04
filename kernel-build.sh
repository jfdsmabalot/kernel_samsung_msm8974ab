#!/bin/bash
#
#  The Arkenstone Kernel
#

clear
 
echo "" 
echo "" 
echo "The Arkenstone Kernel S5" 
echo "" 
echo "" 

make clean 
git checkout master 
export ARCH=arm 
export CROSS_COMPILE=~/tmp/arm-eabi-4.10/bin/arm-eabi- 
export ENABLE_GRAPHITE=true 
make msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig time make -j3 2>&1 | tee kernel.log 

echo "" 
echo "" 
echo "Gnome@xda-developers.com" 
echo ""
echo ""
