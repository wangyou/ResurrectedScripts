#!/bin/bash
# Specify colors utilized in the terminal
normal='tput sgr0'              # White
red='tput setaf 1'              # Red
green='tput setaf 2'            # Green
yellow='tput setaf 3'           # Yellow
blue='tput setaf 4'             # Blue
violet='tput setaf 5'           # Violet
cyan='tput setaf 6'             # Cyan
white='tput setaf 7'            # White
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold Red
bldgrn=${txtbld}$(tput setaf 2) # Bold green
bldblu=${txtbld}$(tput setaf 4) # Bold blue
bldylw=$(txtbld)$(tput setaf 3) # Bold Yellow
bldvlt=${txtbld}$(tput setaf 5) # Bold Violet
bldcya=${txtbld}$(tput setaf 6) # Bold Cyan
bldwht=${txtbld}$(tput setaf 7) # Bold White

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
        echo -e "${bldcya}           Building RR!        "
tput setaf 3
    sleep 1
    echo
    echo Setting up Build Environment...
    echo
	sleep 2
tput setaf 2
	source build/envsetup.sh
tput setaf 3
	echo  
	echo What is your device code name?
tput setaf 4
	read device
tput setaf 3
	echo -e "You are have chosen to build for ${bldred}$device" 
	echo  
tput setaf 3
	echo  
	echo How many CPU threads do you want to build with?
tput setaf 4
	read thread
tput setaf 3
	echo -e "You have chosen to build RR utilizing ${bldred}$thread CPU thread/s"
	echo  
	echo -e "${bldvlt}Building Resurrection Remix OS now!"
	echo  
	sleep 3
tput setaf 2
	brunch $device userdebug -j$thread
exit
