###### Version:		1.1a    
###### Published:	October 7, 2018

# ABOUT:
_**WARNING:**_ v1.1a is **UNTESTED**

This is a small helper batch file designed to allow PolyCom phones that do not
directly support Click2Call to accomplish the same task via "Push Messaging."
This was cobbled together in about an hour so we could use it at work and as such
is hacky and insecure for large-scale deployment.

**THIS HAS ONLY BEEN TESTED WITH POLYCOM VVX 410, BUT SHOULD WORK WITH ANY PHONE
SUPPORTING PUSH MESSAGING!**

# HOW TO INSTALL:
On your PolyCom phone, you will need to enable REST API and Push Messaging.
For Push Messaging, you will need to set the root to *push*    

Download the [release] (https://github.com/khaosnmt/polycom-click2call/releases)
and run it. The EXE will automatically install everything and prompt you to reboot.

# TECHNICAL DETAILS:
The .reg file registers the .bat file as the default handler for tel:// links in 
Windows. The .bat file takes the tel://<number> when clicked or otherwise 
requested and sends it to the PolyCom phone via a push message. The phone will 
instantly dial the number.

# TODO:    
  * Make an easier way to change the phone's IP and credentials, possibly make a selection dialog to
 change between phones from the system tray    
