# Scrilog v4
Script used for building Resurrection Remix
> Android M is the only supported version for scrilog

## How to build with Scrilog:
Simply run the setup script
```
cd ~/
git clone https://github.com/furrydaus/scrilog
cd scrilog
./setup.sh
```
After setting up, cd to the source code folder directory and run the build script
```
cd ~/android/rr/
./build.sh
```
The build script will then prompt you for 2 types of information.
- You device codename (For eg.: hammerhead, huashan)
- CPU Thread for building (This number depends on your PC specifcations)

Once you have input the 2 required information, RR will start building for your device. It will either fail and require you to fix the errors, or it will be successful.

If the build was successful, the zip file will be located in:
```
~/android/rr/out/target/product/(device-codename)/ResurrectionRemix-M-(version)-(date)-(device-codename).zip
```