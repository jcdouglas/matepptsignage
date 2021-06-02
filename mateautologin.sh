#!/bin/bash
USAGE="\t mateautologin.sh 'someusername'"
if [ $# -ne 1 ]
then
        echo
        echo "Incorrect usage..."
        echo
        echo "Try:"
        echo -e $USAGE
        echo
        exit
fi

sed -i 's/#greeter-session.*/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf
sed -i 's/#autologin-user=/autologin-user='$1'/g' /etc/lightdm/lightdm.conf

