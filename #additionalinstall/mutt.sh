#!/bin/sh
sudo pacman -S neomutt isync msmtp pass
git clone https://github.com/lukesmithxyz/mutt-wizard
cd mutt-wizard
sudo make install
cd ..
rm -rf mutt-wizard
