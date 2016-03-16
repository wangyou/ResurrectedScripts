# Scrilog v5.0-staging
Script used for building Resurrection Remix
> Android M is the only supported version for scrilog

## How to build with Scrilog:
Simply run the setup script
```
cd ~/
git clone git://github.com/furrydaus/scrilog
cd scrilog
./setup.sh
```
After setting up, cd to the source code folder directory and run the build script
```
cd <path/to/rr/source> [Default is /home/username/rr]
./build.sh
```
The build script will then prompt you for 2 types of information.
- You device codename (For eg.: hammerhead, huashan)
- CPU Thread for building (This number depends on your PC specifcations)

Once you have input the 2 required information, RR will start building for your device. It will either fail and require you to fix the errors, or it will be successful.

If the build was successful, the zip file will be located in:
```
<path/to/rr/source>/out/target/product/(device-codename)/ResurrectionRemix-M-(version)-(date)-(device-codename).zip
```

Incase you have a 2nd hard drive or ssd or something, it is recommended to store the output of build there.
This will result in a faster compilation, as read and write operations will occur simultaneously on the same drive, but on different ones
To do so, assuming your 2nd drive is mounted at /disk2, add this to your .bashrc or other similar file
```
export OUT_DIR_COMMON_BASE=/out
```
Make sure your user has write permissions to that of course :P
In this case your build output will be at
/out/<folder-name-of-rr-source>/target/product/<device>/ResurrectionRemix-M-(version)-(date)-(device-codename).zip

Incase you have one more drive [LOL], 
```
export CCACHE_DIR=/disk3
```
Your ccache will be stored in there then :)

Incase its an unofficial build, feel free to contact one of the team [you can find them in the Google+ community] to make it official :'D
Enjoy! :'D
