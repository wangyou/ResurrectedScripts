#!/bin/bash
# Define shebang identifier

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


tput bold
tput setaf 1
clear
echo -e ""
echo -e ""
echo -e "______                                   _   _             "
echo -e "| ___ \                                 | | (_)            "
echo -e "| |_/ /___  ___ _   _ _ __ _ __ ___  ___| |_ _  ___  _ __  "
echo -e "|    // _ \/ __| | | | '__| '__/ _ \/ __| __| |/ _ \| '_ \ "
echo -e "| |\ \  __/\__ \ |_| | |  | | |  __/ (__| |_| | (_) | | | |"
echo -e "\_| \_\___||___/\__,_|_|  |_|  \___|\___|\__|_|\___/|_| |_|"
echo -e "                                                           "
echo -e "                                                           "
echo -e "    ______               _             ____  _____         "
echo -e "    | ___ \             (_)           / ___||  _  |        "
echo -e "    | |_/ /___ _ __ ___  ___  __     / /___ | |/' |        "
echo -e "    |    // _ \ '_ ` _ \| \ \/ /     | ___ \|  /| |        "
echo -e "    | |\ \  __/ | | | | | |>  <      | \_/ |\ |_/ /        "
echo -e "    \_| \_\___|_| |_| |_|_/_/\_\     \_____(_)___/         "
echo -e "                                                           "
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e "${bldgrn}  Welcome to the Resurrection Remix Source Code Downloader!"
tput sgr0

# Defines repo tools directory
DIRECTORY="~/bin/repo"

# Detects if repo is installed
if [ ! -d "$DIRECTORY" ]
then
	echo -e "${bldred}Repo does not exist!"
	echo -e "${bldred}Please run setup.sh FIRST!"
	exit
else
	echo -e "${bldred}Repo Exists! Proceeding..."
fi
clear

# Once successfully detected, the script asks for the directory the user wishes to use
echo -e "${bldcya}Where do you want to initialize the RR source code?"
echo -e "${bldblu}For example: /home/$USER/rr or /media/$USER/yourdrive/rr"
read rrpath
mkdir -p $rrpath
cd $rrpath

# Now the script asks for which android version the user wants to download
echo -e "${bldcya}Which version of android do you want to download?"
echo -e "${bldblu}Please input the Android Version Value"
echo -e "${bldblu}For Example: 5.1 for Android L"
read rrversion
if [ $rrversion -lt 6 ]
then
  echo -e "${bldgrn}Downloading Source Code for Android Lollipop"
  repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b lollipop5.1
elif [ $rrversion -gt 6 ]
then
  echo -e "${bldgrn}Downloading Source Code for Android Lollipop"
  repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b lollipop5.1
fi
