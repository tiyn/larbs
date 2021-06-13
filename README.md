# LARBS
This is my modified version of lukesmithxyz's auto-rice bootstrapping scripts.
I made some changes which can be found mainly in the progs.csv.
This also installs all needed dotfiles from my .dotfiles repository.
In contrast to Lukes Script this one installs dwm and not i3 because it sucks less.

## Essentials
To get this script working you need a base installation of arch.
There is no need to configure users or anything else than internet access and
what is needed to get arch booting.

- Operating System: `Arch Linux`
- Window Manager: `dwm`
- Shell: `zsh`
- Terminal Emulator: `st`
- File Manager: `vifm`
- Application Launcher: `dmenu(_run)`
- Compositor: `xcompmgr`
- Status Bar: `dwmblocks`
- Notification Service: `dunst`
- Text Editor: `neovim`
- Reader: `zathura`
- Browser: `firefox`
- Lockscreen: `slock`

All programs including these can be found in the `progs.csv`.

## Preparation

A bootable base installation of Arch Linux is needed.
You can find a guide on how to get a encrypted Arch Linux with LVM installed in
another
[repository](https://github.com/tiynger/wiki/wiki/linux/arch-linux/installation.md).
Please only follow the guide until creating a second user.
You don't need an existing user other than root to use larbs.
A seperate user will be created during the installation progress.

## Installation

```shell
curl -LO https://raw.githubusercontent.com/tiynger/larbs/master/larbs.sh
sh larbs.sh
```

## Hotkeys

There are a bunch of hotkeys. Please visit my
[dwm](https://github.com/tiyn/dwm) and [st](https://github.com/tiyn/st)
builds and my [dotfiles](https://github.com/tiyn/.dotfiles) to see them.

## Optional

There are a bunch of programs that i use and think are useful.
You can find installation guides to these on my
[wiki](https://www.wiki.martenkante.eu/#arch).

## Tests

This script will be regularly checked for correctness.
Testing system is a Virtual Machine inside Proxmox or a Lenovo Thinkpad X220.
Maximum results range from `+` over `o` to `-`, the latter being the worst.

| Commit  | Date       | Result | Description         |
| ------- | ---------- | ------ | ------------------- |
| 4d6dcd7 | 04.04.2020 | +      | flawlessly working |
| 4d6dcd7 | 13.06.2021 | +      | flawlessly working |
