#!/bin/bash

# Specify colors utilized in the terminal
red='tput setaf 1'              # red
green='tput setaf 2'            # green
yellow='tput setaf 3'           # yellow
blue='tput setaf 4'             # blue
violet='tput setaf 5'           # violet
cyan='tput setaf 6'             # cyan
white='tput setaf 7'            # white
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold red
bldgrn=${txtbld}$(tput setaf 2) # Bold green
bldblu=${txtbld}$(tput setaf 4) # Bold blue
bldcya=${txtbld}$(tput setaf 6) # Bold cyan
normal='tput sgr0'

clear
	echo -e "${bldred}          ___          ___     "
	echo -e "${bldred}         /  /\        /  /\    "
	echo -e "${bldred}        /  /::\      /  /::\   "
	echo -e "${bldred}       /  /:/\:\    /  /:/\:\  "
	echo -e "${bldred}      /  /:/~/:/   /  /:/~/:/  "
	echo -e "${bldred}     /__/:/ /:/___/__/:/ /:/___"
	echo -e "${bldred}     \  \:\/:::::/\  \:\/:::::/"
	echo -e "${bldred}      \  \::/~~~~  \  \::/~~~~ "
	echo -e "${bldred}       \  \:\       \  \:\     "
	echo -e "${bldred}        \  \:\       \  \:\    "
	echo -e "${bldred}         \__\/        \__\/    "
	echo -e "${bldred}                               "
	echo -e "${bldred}       RESURRECTION REMIX OS   "
	echo -e "${bldred}                               "
	echo -e "${bldred}       M A R S H M A L L O W   "
	echo -e "${bldred}                               "
	echo -e "${bldcya}      Downloading Source Code! "
	echo  
	sleep 2
tput setaf 2
	mkdir -p ~/android/rr
	cp build.sh ~/android/rr/build.sh
	cd ~/android/rr
	repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b marshmallow
	time repo sync --force-broken --force-sync --no-clone-bundle --quiet
	echo  
	echo  
	echo -e "${bldcya}The RR Source Code has been downloaded into ~/android/rr"
	echo -e "${bldcya}The build script is located at ~/android/rr/build.sh"
exit
