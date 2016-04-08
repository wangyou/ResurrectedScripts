# Resurrected Scripts
Script used for building Resurrection Remix
> Android M is the only supported version for Resurrected Scripts

Module  | Recommended Requirements
-------:|:-------------------------
CPU     | 64bit CPU with at least 2 cores
GPU     | Not applicable
Memory  | 4GB RAM
Storage | 150GB HDD
Internet| Anything decent, the more the better, you have to download ~20GB
Display | Not applicable
OS      | x64 Linux based OS* [This guide works for ubuntu/debian/mint/others with aptitude as package manager][Will add Arch Linux Script soon]

\* Currently tested on: **Linux Mint 17.3**, **Ubuntu 14.04 LTS**

Sections     | Estimated Time
------------:|:-------------------------
Install      | < 1 hour
Download     | Depends on net connection. 100mbit/s+ (~40 Minutes), 5mbit/s (6-8 hours)
Building     | Depends on PC specifications

- If you're looking to upgrade your computer for better build times, consider these few pointers:
 1. Better CPU: A processor with more powerful Single Core processing can process code faster. We recommend getting intel CPUs as they         are better in that aspect. Anything higher than the i5-3570 can build in <2 hours
 2. SSD or HDD with higher RPM: This allows faster R/W Speeds and results in faster build times. Its better to always get more drives         such that there is less stress on the drive and theres more data flow per SATA connector
 3. Bigger RAM: More RAM allows more instructions to be sent over to the CPU and will allow the CPU to be more efficient. It also             helps if you want to use applications whilst building and not ressult in build failures caused by insufficient memory
 4. Faster Internet: Nowadays internet connections are around 2mbps+ There is not a need to upgrade your internet that quick. If you          have a tendency of re-downloading the full source code or downloading source code for other ROMs, consider a faster internet connection.

## How to build with Resurreected Scripts:
Simply run the setup script to get your PC ready
```
cd ~/
git clone git://github.com/ResurrectionRemix/ResurrectedScripts.git -b marshmallow scripts
cd scripts
./setup.sh
```
After setting up, cd to the source code folder directory and run the build script
```
cd <path/to/rr/source> [Default is /home/username/rr]
bash build.sh <device>
```
The build script will then prompt you for your device codename you wish to build, incase you didn't pass it as a parameter
For Example; Hammerhead, Huashan
Once you have input the device codename, RR will start building for your device.
It will either fail and require you to fix the errors, or it will be successful.

If the build was successful, the zip file will be located in:
```
<path/to/rr/source>/out/target/product/<device-codename>/ResurrectionRemix-M-<version>-<date>-<device-codename>.zip
```

### Tips and Tricks
1. Use Screen
When you build RR, you might get disconnected from your SSH session or someone may close your Terminal Session. By using screen, RR will continue
building in the background regardless if your SSH or terminal session is closed unexpectedly. To open a screen session type;
```
screen -S android
```
To diconnect a screen session, press CTRL+A+D.
To connect to screen session;
```
screen -R android
```
To connect to a session that has closed unexpectedly;
```
screen -D -R android
```
To close a screen session;
```
screen -X -S android kill
```
To list screen sessions;
```
screen -ls
```
To learn more about screen and how it can help you, visit: https://www.rackaid.com/blog/linux-screen-tutorial-and-how-to/ or http://www.computerhope.com/unix/screen.htm

2. Store your builds in a seperate drive for faster compilation
This results in the Read and Write operations to run simultaneously. Hard Drives benefit from this as it places less stress on the drive head.
Generall, all SATA drives benefit as data can only be transferred in one direction at the same time frames. More SATA ports mean more lanes for
data to flow.

To do so, you will need to find where your 2nd drive is mounted in Linux.
Assuming your 2nd drive is mounted at /disk2, add this to your .bashrc or other similar file
```
export OUT_DIR_COMMON_BASE=/out
```
Make sure your user has write permissions to that of course.

Instead of the old build output, it will be here instead:
/out/<folder-name-of-rr-source>/target/product/<device>/ResurrectionRemix-M-(version)-(date)-(device-codename).zip

3. Store CCache in a seperate drive for faster compilation
The explanation here is similar to the previous trick although CCache is a bunch of compiled data that will be frequently accessed by the build
generator to cut down build times. By placing CCache in a seperate directory, again, the data will be accessed faster and more efficiently.
```
export CCACHE_DIR=/disk3
```
Your ccache will be stored in there then. If you want to clear the ccache, just simply delete the folder

#### How to make unofficial builds Official
Incase you are building an unofficial build, and want to make it official, feel free to contact one of the team members
[you can find them in the Google+ community]. Namely, Atlan KRK, Varun Date and Akhil Narang, Brian Koluch, Andres Pascual
Enjoy! :D

##### Links
1. Resurrection Remix Community: https://plus.google.com/communities/109352646351468373340
2. Resurrection Remix Source Code: https://github.com/ResurrectionRemix
3. Resurrection Remix Device Code: https://github.com/ResurrectionRemix-Devices
