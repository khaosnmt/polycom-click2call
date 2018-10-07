###### Version:		1.0    
###### Published:	October 7, 2018

# ABOUT:
This is a small helper batch file designed to allow PolyCom phones that do not
directly support Click2Call to accomplish the same task via "Push Messaging."
This was cobbled together in about an hour so we could use it at work and as such
is hacky and insecure for large-scale deployment.

**THIS HAS ONLY BEEN TESTED WITH POLYCOM VVX 410, BUT SHOULD WORK WITH ANY PHONE
SUPPORTING PUSH MESSAGING!**

# HOW TO INSTALL:
On your PolyCom phone, you will need to enable REST API and Push Messaging.
For Push Messaging, you will need to set the root to *push*
You will also need to set the Push Messaging user and password to *polycom*
(Please note that in this first release, these credentials are hardcoded, so if
you wish to be secure about this, you will need to edit the .bat file)

For this, you will need to copy the *polycom_click2call.bat* and *curl.exe* to
C:\Windows\System32. You will then need to import the .reg file and reboot.

# TECHNICAL DETAILS:
The .reg file registers the .bat file as the default handler for tel:// links in 
Windows. The .bat file takes the tel://<number> when clicked or otherwise 
requested and sends it to the PolyCom phone via a push message. The phone will 
instantly dial the number.

# TODO:    
  * Add some kind of confirmation before dialing to prevent accidental and 
potentially embarassing calls.    
  * Get rid of hard coded creds    
  * Possibly make some kind of SFX for auto-installation    
  * Make an easier way to change the phone's IP, possibly make a selection dialog to
 change between phones    
