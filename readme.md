## Disks
  - make true that system is boot in EFI mode: `ls /sys/firmware/efi/efivars` .
  - create patition with cgdisk .
  - Root filesystem：`mkfs.btrfs -L root -n 32k /dev/sda2` .

## Kernel
  - mv kernel-config /usr/src/linux/.config .
  - enable tty display .
    ```
    1. CONFIG_FB_VESA=y
    2. CONFIG_FB_EFI=y
    3. CONFIG_FB_SIMPLE=y
    ```

## Grub
  1. install playmouth .
  2. `sudo plymouth-set-default-theme solar` .
  3. `sudo dracut --force` .
  4. add `GRUB_TIMEOUT=0` and `GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=0 vt.global_cursor_default=0 splash"` to /etc/default/grub .
  5. run `grub-mkconfig -o /boot/grub/grub.cfg` .
  6. install grub theme [grub2-themes](https://github.com/vinceliuice) .

## User
  - set fish as default shell `chsh -s /usr/bin/fish` .
  - accept easy password `change "enforce" option from "everyone" to "none" in the /etc/security/passwdqc.conf

## Fonts
  - /etc/locale.gen
    ```
    en_US.UTF-8 UTF-8
    zh_CN.UTF-8 UTF-8
    ```
  - fonts:
    1. copy fonts repository to /usr/share/fonts .
    2. [install noto fonts](https://wiki.gentoo.org/wiki/Fontconfig) .
    3. install media-fonts/nerd-fonts .
    4. enable 70-no-bitmaps.conf and 10-sub-pixel-rgb.conf .

# Fcitx5
  1. install fcitx-rime fcitx-configtool (verson > 5) .
  2. copy `etc/environment` to /etc/environment .
  3. add `exec_always fcitx5 -d --replace` to sway config .
  4. switch simple and tradition with Ctrl + ` .
  5. [config rime](https://github.com/rime/home/wiki) .

## Pali keyboard layout
	- [keyboard layout on sway](https://github.com/swaywm/sway/issues/4250)

## Cursor theme
  1. [install gentoo-xcursor](https://wiki.gentoo.org/wiki/Cursor_themes) .
  2. add `seat seat0 xcursor_theme gentoo` in sway config .

## Portage
  - [search package](https://gpo.zugaina.org/app-i18n/fcitx)
  - `sudo emerge --ask app-portage/cfg-update` .
  - overlay
    ```
    1. `sudo emerge --ask app-eselect/eselect-repository` .
    2. `sudo eselect repository enable guru gentoo-zh dm9pZCAq pg_overlay` .
    3. `sudo emerge --sync` .
    ```

## Network
  - install and enable `iwd` and `dhcpcd` .
  - enable systemd-networkd.service .
  - enable systemd-resolved.service .

## Wireguard
  - generate ssh key `ssh-keygen -t rsa -C "YOUR@EMAIL.com"` .
  - install wireguard server [on centos7.6](wget https://raw.githubusercontent.com/atrandys/wireguard/master/wireguard_install.sh) .
  - ssh-copy-id `wireguard server` .
  - install `wireguard-tools` .
  - [client config](https://tech.serhatteker.com/post/2021-01/how-to-set-up-wireguard-client-on-ubuntu-desktop/) .
  - /etc/resolv.conf
    ```
    nameserver 114.114.114.114
    ```

## Audio
  1. install pavucontrol .
  2. pulseaudio --check && pulseaudio -D .

## Qutebrowser
  - fullScreen Setting `cmd: fullscreen --enter`.

## Fish
  - set `fish` as default shell：`chsh -s /usr/bin/fish` .

## Alacritty
  - install [alacritty-theme-switch](https://github.com/tichopad/alacritty-theme-switch) .
  - windows
    ```
    1. located in C:\Users\shun\AppData\Roaming\.
    2. send start.bat to desktop.
    3. change name and icon.
    4. create shortcut.
    5. switch theme: `alacritty-theme-switch.cmd --config C:\Users\shun\AppData\Roaming\alacritty\alacritty.yml --themes C:\Users\shun\AppData\Roaming\alacritty\themes --backup C:\Users\shun\AppData\Roaming\alacritty\alacritty.backup.yml`
    ```

## Node
  - `npm install -g pnpm` .
  - pnpm
    ```
    pnpm config set registry https://registry.npm.taobao.org
    pnpm config set -g auto-install-peers true
    pnpm install -g n
    sudo n lts
    ```

## Sioyek
  - install sys-fs/fuse:0 .
  - open appimage .

## Brightness 
  - install `app-misc/ddcutil`
  - detects monitors `sudo ddcutil detect`
  - get vcp code `sudo ddcutil vcpinfo | grep Bright`
  - get current brightness `sudo ddcutil getvcp code`
  - ajust brightness `sudo ddcutil setvcp code - 10`

## Touchpad
  - [wiki](https://wiki.archlinux.org/title/Libinput)
  - install device tool ：`sudo pacman -S xinput` .
  - get device name with: `xinput` .
  - install package：`sudo pacman -S libinput xorg-xinput xf86-input-libinput` .
  - copy magic.conf to `/etc/X11/xorg.conf.d/`, then logout or reboot .
  - [options of configuration](https://man.archlinux.org/man/libinput.4) .
  - [install magic gesture](https://github.com/bulletmark/libinput-gestures) .
  - add startup entry in sway config and copy libinput-gestures.conf to .config .

## Other apps
  - gamma: `wlsunset` .
  - system tool: `btopt ncdu fd duf tldr dmidecode wev neofetch pip` .
  - file manager: `ranger` .
  - [terminal dictionary](https://github.com/xueyuanl/cambrinary) .
  - git: `git`, `gitui` .
  - email client: `aerc` .
  - usb driver: `udisks` .
  - dict: `goldendict` .
  - epub: `sigil AppImage` .
  - office: `onlyoffice AppImage` .
  - screenshot : `grimshot` .
  - image editor: `swappy` .
  - image viewer: `swayimg` .

