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

# Detects if the setup.sh file has been executed before the rest of the script starts
File=.result.sh
if grep -q 0 "$File";
then
	echo "The dependencies required have not been installed! Please the Setup Script FIRST!"
	exit
else
fi

# Asks user which ROM they are building
PS3='Which ROM are you trying to build/download?'
options=("RR" "CM")
select opt in "${options[@]}"
do

case $opt in
	"RR")
echo You have chosen ResurrectionRemix!

	# Creates folder for RR Source
	echo Downloading RR Source Code. This may take a moment...
	mkdir rr
	cd rr
	repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b marshmallow
	time repo sync --force-broken --force-sync --no-clone-bundle -qs
	cp scripts/build.sh rr/build.sh
	echo The RR Source Code has been succesfully downloaded into $PWD/rr
	echo Be sure to run the build script in the directory! $PWD/rr/build.sh

;;
case $opt in
	"CM")
echo You have chosen CyanogenMod!

	# Creates folder for CM Source
	echo Downloading CM Source Code. This may take a moment...
	mkdir rr
	cd rr
	repo init -u https://github.com/CyanogenMod/platform_manifest.git -b marshmallow
	time repo sync --force-broken --force-sync --no-clone-bundle -qs
	cp scripts/build.sh rr/build.sh
	echo The CM Source Code has been succesfully downloaded into $PWD/cm
	echo Be sure to run the build script in the directory! $PWD/cm/build.sh

;;
    *) echo invalid option;;
 esac
done
