#!/bin/bash

PS3='Which ROM are you trying to build/download?'
options=("RR" "CM")
select opt in "${options[@]}"
do

case $opt in
	"RR")
echo You have chosen ResurrectionRemix!
	echo Downloading RR Source Code. This may take a moment...
	mkdir ~/android/rr
	cd ~/android/rr
	repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b marshmallow
	time repo sync --force-broken --force-sync --no-clone-bundle --quiet
	wget https://raw.githubusercontent.com/Furrydaus/scrilog/master/build.sh
	chmod a+x build.sh
	echo The RR Source Code has been succesfully downloaded into ~/android/rr
	echo Be sure to run the build script in the directory! ~/android/rr/build.sh
;;
	"CM")
echo You have chosen CyanogenMod!

	echo Downloading CM Source Code. This may take a moment...
	mkdir ~/android/cm
	cd ~/android/cm
	repo init -u https://github.com/CyanogenMod/android.git -b cm-13.0
	time repo sync --force-broken --force-sync --no-clone-bundle --quiet
	wget https://raw.githubusercontent.com/Furrydaus/scrilog/master/build.sh
	chmod a+x build.sh
	echo The CM Source Code has been succesfully downloaded into ~/android/cm
	echo Be sure to run the build script in the directory! ~/android/cm/build.sh
;;
    *) echo invalid option;;
 esac
done
