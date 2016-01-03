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
echo -e .d8888.  .o88b. d8888b. d888888b db       .d88b.   d888b  
echo -e 88'  YP d8P  Y8 88  `8D   `88'   88      .8P  Y8. 88' Y8b 
echo -e `8bo.   8P      88oobY'    88    88      88    88 88      
echo -e   `Y8b. 8b      88`8b      88    88      88    88 88  ooo 
echo -e db   8D Y8b  d8 88 `88.   .88.   88booo. `8b  d8' 88. ~8~ 
echo -e `8888Y'  `Y88P' 88   YD Y888888P Y88888P  `Y88P'   Y888P  
echo -e "
echo -e ""
echo -e ""
echo -e ""
echo -e "${bldgrn}  Welcome to the Scrilog Downloader!"
tput sgr0

# Defines repo tools directory
REPO="$(which repo)"

# Detects if repo is installed
if [ ! -f "$REPO" ]
then
	echo -e "${bldred}repo tool does not exist!"
	echo -e "${bldred}Please run setup.sh FIRST!"
	exit
else
	echo -e "${bldred}repo tool Exists! Proceeding..."
fi
clear

# Once successfully detected, the script asks for the directory the user wishes to use
echo -e "${bldcya}Where do you want to initialize the ROM source code?"
echo -e "${bldblu}For example: /home/$USER/android/cm or /media/$USER/yourdrive/android"
read dlpath
mkdir -p $dlpath
cd $dlpath

# Now the script asks for which android version the user wants to download
echo -e "${bldgrn}Downloading Source Code for Android Marshmallow"
repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b marshmallow
time repo sync --force-broken --force-sync --no-clone-bundle -qs
