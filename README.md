# Scrilog v3.0
Script used for building Resurrection Remix
> Android M is the only supported version for scrilog

## How to build with Scrilog:
Firstly, set your hardware for building and download the primary source code.
```
cd ~/
git clone https://github.com/ResurrectionRemix/scrilog
cd scrilog
./setup.sh
./download.sh
```
After setting up, cd to the source code folder directory and run the build script
```
cd ~/android/rr/
./build.sh
```
The build script will then prompt you for 2 types of information.
- You device codename (For eg.: hammerhead, huashan, angler)
- CPU Thread for building (This number depends on your PC specifcations)

Once you have input the 2 required information, RR will start building for your device. It will either fail and require you to fix the errors, or it will be successful.

If the build was successful, the zip file will be located in:
```
~/android/rr/out/target/product/(device-codename)/ResurrectionRemix-M-(version)-(date)-(device-codename).zip
```

###### Credits
- @akhilnarang
	* For helping out with the setup scripts and supporting this project
- Resurrection Remix Developers and Community
	* Being an awesome community and supporting our work
