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

## Preparation
A bootable base installation of Arch Linux is needed.
You can find a guide on how to get a encrypted Arch Linux with LVM installed on my [website](https://www.wiki.martenkante.eu/#arch/installation.md).
Please only follow the guide until creating a second user.
You don't need an existing user other than root to use larbs.
A seperate user will be created during the installation progress.

## Installation
```
curl -LO https://raw.githubusercontent.com/tiynger/larbs/master/larbs.sh
sh larbs.sh
```
## Hotkeys
There are a bunch of hotkeys. Please visit my dwm and st patches to see them.

## Optional
There are a bunch of programs that i use and think are useful.
You can find installation guides to these on my [wiki](https://www.wiki.martenkante.eu/#arch)
