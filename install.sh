#!/bin/sh

echo "chopchop - a Dota 2 Tree Chopper"
echo "--------------------------------"

echo "Check requirements .."

REQ=""

if [ ! "`which xdotool`" ]; then
    REQ=${REQ}" xdotool"
fi

if [ ! "`which xbindkeys`" ]; then
    REQ=${REQ}" xbindkeys"
fi

if [ "${REQ}" != "" ]; then
    echo "sudo apt-get install ${REQ}"
    sudo apt-get install ${REQ}
fi

echo "Copying files .."
cp -vr bin/ coordinates.txt $HOME
echo "off" > $HOME/.chopstatus

echo "Changing permissions .."
chmod -v 755 $HOME/bin/chopchop $HOME/train-chopping

echo "Setting up hotkeys .."
cat xbindkeysrc >> $HOME/.xbindkeysrc

echo "Restarting xbindkeys .."
killall xbindkeys 2> /dev/null
xbindkeys

echo "Setup complete."
