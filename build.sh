#!/bin/bash
bold=$(tput bold)

echo Setting up build environment...
source build/envsetup.sh

PS3='Which device are you building for?'
options=("Nexus 5" "Xperia SP")
select opt in "${options[@]}"
do
case $opt in
	"Nexus 5")
echo You have chosen to build for the Nexus 5!
	echo Downloading device code...
	breakfast hammerhead
	time repo sync --force-broken --force-sync --no-clone-bundle --quiet
	echo The device code has been succesfully downloaded
	clear
	echo Brunching for the Nexus 5
	brunch hammerhead
;;
	"Xperia SP")
echo You have chosen to build for the Xperia SP!
        echo Downloading device code from ${bold}Darjwx...
        mkdir .repo/local_manifests
        cd .repo/local_manifests
        wget https://raw.githubusercontent.com/darjwx/local_manifests/huashan/dirty_unicorns.xml
        cd ../../
        time repo sync --force-broken --force-sync --no-clone-bundle --quiet
        echo The device code has been succesfully downloaded
        clear
        echo Brunching for the Xperia SP
        brunch huashan

;;
    *) echo invalid option;;
 esac
done
