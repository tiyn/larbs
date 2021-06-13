# LARBS

This is my modified version of lukesmithxyz's auto-rice bootstrapping scripts.
I made some changes which can be found mainly in the progs.csv.
This also installs all needed dotfiles from my .dotfiles repository.
In contrast to Lukes Script this one installs dwm and not i3 because it sucks less.

## Essentials

To get this script working you need a base installation of arch.

- Operating System: `Arch Linux`
- Window Manager: `dwm`
- Shell: `zsh`
- Terminal Emulator: `st`
- File Manager: `vifm`
- Application Launcher: `dmenu(_run)`
- Status Bar: `dwmblocks`
- Notification Service: `dunst`
- Text Editor: `neovim`
- Reader: `zathura`
- Browser: `firefox`
- Lockscreen: `slock`

All programs including these can be found in the `progs.csv`.

## Hotkeys

There are a bunch of hotkeys. Please visit my
[dwm](https://github.com/tiyn/dwm) and [st](https://github.com/tiyn/st)
builds and my [dotfiles](https://github.com/tiyn/.dotfiles) to see them.

## Preparation

A bootable base installation of Arch Linux is needed.
You can do a minimal install by following a
[secure guide by me](https://github.com/Tiyn/wiki/blob/master/wiki/linux/arch-linux/installation.md).
You don't need an existing user other than root to use larbs.
A seperate user will be created during the installation progress.

## Installation

```shell
curl -LO https://raw.githubusercontent.com/tiynger/larbs/master/larbs.sh
sh larbs.sh
```

## Tests

This script will be regularly checked for correctness.
Testing system is a Virtual Machine inside Proxmox or a Lenovo Thinkpad X220
occasionally other systems are used (they all use my described guide for a
basic installation).
Maximum results range from `+` over `o` to `-`, the latter being the worst.

| Commit  | Date       | Result | Description              |
| ------- | ---------- | ------ | ------------------------ |
| 4d6dcd7 | 04.04.2020 | +      | Proxmox VM               |
| 0456974 | 31.12.2020 | +      | Proxmox VM               |
| d32191b | 12.06.2021 | +      | Lenovo X220              |
| 6dfcaba | 13.06.2021 | +      | Ryzen 3900x and GTX 1080 |
