# LARBS

This is my modified version of lukesmithxyz's auto-rice bootstrapping scripts.
I made some changes which can be found mainly in the progs.csv.
This also installs all needed dotfiles from my .dotfiles repository.
In contrast to Lukes Script this one installs dwm and not i3 because it sucks less.

## Default Programs and Hotkeys 

The default programs that are used by LARBS can be found in my
[dotfiles](https://github.com/tiyn/dotfiles).

There are a bunch of hotkeys. Please visit my
[dwm](https://github.com/tiyn/dwm) and [st](https://github.com/tiyn/st)
builds and my [dotfiles](https://github.com/tiyn/dotfiles) to see them.

## Preparation

To get this script working you need a bootable base installation of Arch Linux.
You can do a minimal install by following a
[secure guide by me](https://github.com/Tiyn/wiki/blob/master/wiki/linux/arch-linux/installation.md).
You don't need an existing user other than root to use larbs.
A seperate user will be created during the installation progress.

## Installation

```shell
curl -LO https://raw.githubusercontent.com/tiynger/larbs/master/larbs.sh
sh larbs.sh
```

It is possible that the following commands need to be run before the script is able to retrieve
packages.

```sh
pacman-key --populate archlinux
pacman-key --refresh-keys
```

It is possible that the screen won't be detected at first.
To fix this install the needed drivers for the graphics card.
For AMD this is `mesa` and `xf86-video-amdgpu`.

## Tests

This script will be checked for correctness on important changes.
Testing system is a Virtual Machine inside Proxmox or a Lenovo Thinkpad X220
occasionally other systems are used (they all use my described guide for a
basic installation).
Results range from `+` over `o` to `-`.
`+` means the script ran without problems.
`o` means that minor changes were made to the machine and/or the script after running it.
`-` means that the script did not work at all.

| Commit  | Date       | Result | Description              |
| ------- | ---------- | ------ | ------------------------ |
| 4d6dcd7 | 04.04.2020 | +      | Proxmox VM               |
| 0456974 | 31.12.2020 | +      | Proxmox VM               |
| d32191b | 12.06.2021 | +      | Lenovo X220              |
| 6dfcaba | 13.06.2021 | +      | Ryzen 3900x and GTX 1080 |
| 594ff41 | 09.08.2021 | +      | Acer Switch A12          |
| 4fa2d6a | 10.01.2023 | +      | Proxmox VM               |
| 961b6b3 | 27.10.2023 | o      | Intel Evo i7 13th Gen    |
| f638c7e | 19.02.2025 | o      | Lenovo E14 AMD Version   |
| 41e6adb | 02.03.2025 | +      | Acer Switch A12          |
