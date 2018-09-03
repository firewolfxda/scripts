#!/bin/bash
# Automate AIK 
# Script by firewolfxda @ XDA
# sloppy 03092018
RED='\033[0;31m' #Red
NC='\033[0m' # No Color
echo
echo "====================================="
echo "=            _____ _  __            ="
echo "=      /\   |_   _| |/ /            ="
echo "=     /  \    | | | ' /             ="
echo "=    / /\ \   | | |  <              ="
echo "=   / ____ \ _| |_| . \             ="
echo "=  /_/    \_\_____|_|\_\__ ____     ="
echo "=      /\  | |  | |__   __/ __ \    ="
echo "=     /  \ | |  | |  | | | |  | |   ="
echo "=    / /\ \| |  | |  | | | |  | |   ="
echo "=   / ____ \ |__| |  | | | |__| |   ="
echo "=  /_/    \_\____/   |_|  \____/    ="
echo "====================================="
echo
printf "${RED}- Press enter to cleanup working directory... ${NC}\n"
echo
read
bash cleanup.sh
echo
printf "${RED}- Copy boot.img here & press enter to unpack... ${NC}\n"
echo
read
for f0 in *.img
do
mv "$f0" image.img
done
bash unpackimg.sh
echo
printf "${RED}- Copy kernel in split_img & press enter to repack... ${NC}\n"
read
echo
test -f `dirname $0`/split_img/*.gz-dtb && rm `dirname $0`/split_img/image.img-zImage || echo
test -f `dirname $0`/split_img/*.gz-dtb && mv `dirname $0`/split_img/*.gz-dtb `dirname $0`/split_img/image.img-zImage || echo
bash repackimg.sh
echo
printf "${RED} Press enter to exit\n"
read
