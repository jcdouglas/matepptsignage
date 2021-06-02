# matepptsignage
A couple of scripts for setting up a signage system with a MATE based desktop.

A few things need to be done to utilize these scripts.

The script for the autologin, just needs to be run to setup the user you want running the signage.

The desktop/server, however you're display the slideshow(in my case it's a powerpoint file that gets updated by users on a network drive/share) needs to have all the power settings
turned up/disabled/whatever, as it's going to run all the time.  You'll also want to remove any docks/taskbars.  This was easier to accomplish with MATE instead of GNOME.

One may want to set the desktop background to something to match the presentation, I used unclutter and conky with a clock for this for when the system gets reset, or stops after
15 minutes or so.  .desktop files will need to be created for when the system starts up and placed in "~/.config/autostart/" like so:

root@signage:/home/signage/.config/autostart# ls -lah
total 20K
drwx------ 2 signage signage 4.0K Jun  2 16:26 .
drwx------ 9 signage signage 4.0K Mar 29 08:55 ..
-rw-r--r-- 1 signage signage  153 Feb 25 10:30 conky.desktop
-rw-r--r-- 1 signage signage  180 Mar  2 15:54 signage.desktop
-rw-r--r-- 1 signage signage  165 Mar  2 15:51 unclutter.desktop

Contents of the corresponding files:

[Desktop Entry]
Type=Application
Exec=/usr/bin/conky -d
Hidden=false
X-MATE-Autostart-enabled=true
Name[en_US]=Conky
Name=Conky
Comment[en_US]=
Comment=

[Desktop Entry]
Type=Application
Exec=/home/signage/signage.sh
Hidden=false
X-MATE-Autostart-enabled=true
Name[en_US]=Signage
Name=Conky
Comment[en_US]=In case of reboot
Comment=

[Desktop Entry]
Type=Application
Exec=/usr/bin/unclutter -idle 10 &
Hidden=false
X-MATE-Autostart-enabled=true
Name[en_US]=Conky
Name=Conky
Comment[en_US]=
Comment=

