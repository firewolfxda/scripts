#!/bin/bash
#
#A personal script to build pbrp auto
#slpooy28112018
#
# firewolfxda@outlook.com
echo
echo "Please choose build type : "
echo
read -p "
  1. Clean
  2. Dirty
  3. Quit

  : " lzbtype1
echo
read -p "Please enter device codename : " lzbdevice1
echo
if [ "$lzbtype1" = "1" ]; then
                 make clean
                 make mrproper
                 export ALLOW_MISSING_DEPENDENCIES=true
                 export LC_ALL=C
                 . build/envsetup.sh
                 lunch omni_$lzbdevice1-eng
                 mka recoveryimage
                 echo

elif [ "$lzbtype1" = "2" ]; then
                 export ALLOW_MISSING_DEPENDENCIES=true
                 export LC_ALL=C
                 . build/envsetup.sh
                 lunch omni_$lzbdevice1-eng
                 mka recoveryimage
                 echo

elif [ "$lzbtype1" = "3" ]; then
                exit
else
  printf "Invalid value\n\n"
fi
