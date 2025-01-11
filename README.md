# MiSTer_BasiliskII
Basilisk II MAC II Emulator installer and build for the MiSTer platform.

## Install instructions
- Run Install_BasiliskII.sh
- Install options can be set in Install_BasiliskII.ini 
- Install (512K/1MB MAC.ROM) in "/media/fat/BasiliskII"
- Edit "/media/fat/BasiliskII/.basilisk_ii_prefs" and specify additional Macintosh VHDs

### Install_BasiliskII.ini (options)
```bash
INSTALL_DIR="/media/fat/BasiliskII"     (Location for BasiliskII bin and libs) 
SCRIPTS_DIR="/media/fat/Scripts"        (Location for BasiliskII launcher script) 
BBOND007_BASILISKII=TRUE                (TRUE to install BasiliskII)
INTERNET_CHECK="https://github.com"     (URL for internet connectivity test)
VERBOSE_MODE="FALSE"                    (TRUE for verbose mode for debugging issues)
```

## Configuring Basilisk II

- [Basilisk II preferences](https://github.com/sentient06/Medusa/wiki/Basilisk-II-preferences-on-OSX-and-Unix)
- [Official README for Basilisk II]()
- [Example MiSTer Scripts for diffrent resolutions](https://github.com/bbond007/MiSTer_BasiliskII/tree/master/Example_Scripts)

# FAQ

## Fix for "ALSA lib pcm.c:8306:(snd_pcm_recover) underrun occured"
Edit `.basilisk_ii_prefs` make sure `soundbuflen 1` is set

# Transferring files to your emulated Mac
When he Mac boots you will see a drive on the desktop called "Unix" this points to the `BasiliskII` directory on your SD card. You can transfer files here across the network or by placing the SD card in your main computer.

## Potential problems
- It is not recommened to edit files in this folder directly from the Mac. Copy them to your Macs emulated hard drive first.
- Mac OS files use resource forks. Most operating systems do not support these and they will be lost when transferring files via non MacOS computers. The best way to work around this is to transfer compressed files e.g. .sit more information here https://www.macintoshrepository.org/articles/152-what-is-a-sit-stuffit-file-and-how-to-use-it-

## Additional Resources
- [Basilisk II homepage](http://basilisk.cebix.net/)
- [Basilisk II source used for build](https://github.com/bbond007/macemu)
- [BasiliskII test video](https://youtu.be/i1sd9KeK1vQ)