# matepptsignage
A couple of scripts for setting up a signage system with a MATE based desktop.

A few things need to be done to utilize these scripts.

The script for the autologin, just needs to be run to setup the user you want running the signage.

The desktop/server, however you're display the slideshow(in my case it's a powerpoint file that gets updated by users on a network drive/share) needs to have all the power settings
turned up/disabled/whatever, as it's going to run all the time.  You'll also want to remove any docks/taskbars.  This was easier to accomplish with MATE instead of GNOME.

One may want to set the desktop background to something to match the presentation, I used unclutter and conky with a clock for this for when the system gets reset, or stops after
15 minutes or so.  .desktop files will need to be created for when the system starts up and placed in "~/.config/autostart/".

...and of course, crontab...conky if you want to have stuff display while not displaying the presentation.


