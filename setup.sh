#!/bin/bash
clear
echo Updating Package Lists...
sudo apt-get update
echo Installing necessary dependencies...
sudo apt-get -y install bison build-essential curl flex git gnupg gperf \
libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk2.8-dev libxml2 \
libxml2-utils lzop maven openjdk-7-jdk openjdk-7-jre pngcrush schedtool \
squashfs-tools xsltproc zip zlib1g-dev g++-multilib gcc-multilib \
lib32ncurses5-dev lib32readline-gplv2-dev lib32z1-dev android-tools-adb screen
clear
echo Dependencies have been installed!
echo Settings up USB Ports...
sudo curl --create-dirs -L -o /etc/udev/rules.d/51-android.rules -O -L https://raw.githubusercontent.com/snowdream/51-android/master/51-android.rules
sudo chmod 644   /etc/udev/rules.d/51-android.rules
sudo chown root /etc/udev/rules.d/51-android.rules
sudo service udev restart
adb kill-server
sudo killall adb
echo Updating repo tool to the latest version...
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
clear
echo Repo has been updated to the latest version!
exit
