#!/bin/bash
echo "signage run @" `date` >> signage.log
xset dpms force on
xset -dpms
xset s off
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
gsettings set org.gnome.desktop.screensaver lock-enabled false
killall soffice.bin
rsync -av /LOCATION/OF/YOUR/FILE.PPT /home/USER/
nohup soffice --norestore --nologo --nodefault --display $DISPLAY --view --show /home/USER/FILE.PPT
