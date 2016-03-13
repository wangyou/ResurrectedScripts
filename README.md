# Scrilog v2.4
Script used for building supported ROMs

| Supported ROMs
|:--------------------------
| CyanogenMod
| Resurrection Remix

| Supported Devices
|:--------------------------
| Sony Xperia SP (CAF)
| Google Nexus 5 (AOSP)

> Android M is the only supported version for scrilog

## How to build with Scrilog:
Firstly, set your hardware for building and download the primary source code
```
git clone https://github.com/Furrydaus/scrilog
cd scrilog
./setup.sh
./download.sh
```
After setting up, cd to the source code folder directory and run the build script
```
cd ~/android/(RR or CM)/
./build.sh
```

###### Credits
- @akhilnarang
	* For helping out with the setup scripts
- @darjwx
	* For allowing the use of his local manifests
