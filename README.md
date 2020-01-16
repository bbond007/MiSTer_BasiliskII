# MiSTer_BasiliskII
Basilisk II MAC II Emulator installer and build for the MiSTer platform

Install instructions:
     
      Run Install_BasiliskII.sh
	  Install options can be set in Install_BasiliskII.ini 
	  Install (512K/1MB MAC.ROM) in "/media/fat/BasiliskII"
	  Edit "/media/fat/BasiliskII/.basilisk_ii_prefs" and specify additional Macintosh VHDs
	    
Basilisk II preferences --> https://github.com/sentient06/Medusa/wiki/Basilisk-II-preferences-on-OSX-and-Unix
	  
Install_BasiliskII.ini (options)

      INSTALL_DIR="/media/fat/BasiliskII"     (Location for BasiliskII bin and libs) 
      SCRIPTS_DIR="/media/fat/Scripts"        (Location for BasiliskII launcher script) 
      BBOND007_BASILISKII=TRUE                (TRUE to install BasiliskII)
      INTERNET_CHECK="https://github.com"     (URL for internet connectivity test)
      VERBOSE_MODE="FALSE"                    (TRUE for verbose mode for debugging issues)

Basilisk II homepage:

      http://https://basilisk.cebix.net/

Basilisk II source used for build:

      https://github.com/bbond007/macemu

BasiliskII test video --> https://youtu.be/i1sd9KeK1vQ
