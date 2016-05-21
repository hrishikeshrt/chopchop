# chopchop
Dota2 Tree Chopper for Clearcut Challenge of International Battle Pass 2016

## Instructions

1. Run ``chmod 755 install.sh && ./install.sh``
2. Start Dota 2
3. Click on "Find Match" to get to tree cutter page.
4. Stop queueing
5. Press **Ctrl + Alt + a** to begin / stop chopping.

## Settings
* You can work with custom trained path, and settings (click per 0.01 second), or adjust it as you wish.
* Key in xbindkeysrc
* Delay and other parameters in bin/chopchop
* Training parameters in bin/train-chopchop
* If your screen resolution is different than 1920x1080 you will have to train first

## Training
* Keep the Dota 2 window open with challenge page loaded
* Run ``~/bin/train-chopchop`` in terminal
* Go back to Dota and trace the expected pattern you want followed
* Not happy with the path you just traced? Run ``mv ~/coordinates.backup ~/coordinates.txt``
