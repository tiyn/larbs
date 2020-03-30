# LARBS
This is my modified version of lukesmithxyz's auto-rice bootstrapping scripts.
I made some changes which can be found mainly in the progs.csv.
This also installs all needed dotfiles from my .dotfiles repository.
In contrast to Lukes Script this one installs dwm and not i3 because it sucks less.

## Essentials
To get this script working you need a base installation of arch.
There is no need to configure users or anything else than internet access and what is needed to get arch booting.

- Operating System: ```Arch Linux```
- Window Manager: ```dwm```
- Shell: ```zsh```
- Terminal Emulator: ```st```
- Shell: ```zsh```
- File Manager: ```vifm```
- Application Launcher: ```dmenu(_run)```
- Compositor: ```xcompmgr```
- Status Bar: ```dwm```
- Notification Service: ```dunst```
- Text Editor: ```neovim```
- Reader: ```zathura```
- Mail Program: ```thunderbird```
- Browser: ```firefox```
- Lockscreen: ```slock```

All programs including these can be found in the ```progs.csv```.

## Installation
```
curl -LO https://raw.githubusercontent.com/tiynger/larbs/master/larbs.sh
sh larbs.sh
```

## Optional
There are a bunch of programs that i use and think are useful.
They come with a .sh installation script and .md description.
The .sh files are not actively maintained and are more a general guideline how to get things working.
Make sure to read the description and check the installation script before using.
