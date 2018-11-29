#!/bin/bash
#
#A personal script to build pbrp auto
#slpooy28112018
#
# firewolfxda@outlook.com
#
blue='\033[0;34m'
cyan='\033[0;36m'
green='\e[0;32m'
yellow='\033[0;33m'
nocol='\033[0m'
purple='\e[0;35m'
white='\e[0;37m'
red='\033[0;31m'

echo

printf "${blue} Please choose build type :${nocol}"

echo

printf "\n
${cyan}  1. Clean ${nocol}\n
${yellow}  2. Dirty ${nocol}\n
${red}  0. Exit ${nocol}\n
\n"

read -p "  : " lzbtype1
if [ "$lzbtype1" = "0" ] || [ "$lzbtype1" = "1" ] || [ "$lzbtype1" = "2" ]; then
echo
if [ "$lzbtype1" = "0" ]; then
                exit
fi
printf "${blue} Please enter device codename: ${nocol}"
read -p "" lzbdevice1
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

elif [ "$lzbtype1" = "0" ]; then
                exit
fi
else
  printf "${red}\n Invalid value\n${nocol}${red} Try again or exit...\n${nocol}"
  bash lazybuilder.sh
fi
