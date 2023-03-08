## Disks
  - Make true that system is boot in EFI mode: `ls /sys/firmware/efi/efivars`.
  - Create patition with cgdisk.
  - Root filesystem：`mkfs.btrfs -L root -n 32k /dev/sda2`.

## Kernel
  - Check device driver: `lspci -kv`
  - `mv kernel-config /usr/src/linux/.config`.
  - Enable tty display.
    ```
    1. CONFIG_FB_VESA=y
    2. CONFIG_FB_EFI=y
    3. CONFIG_FB_SIMPLE=y
    ```

## Grub
  1. Install playmouth.
  2. `sudo plymouth-set-default-theme solar`.
  3. `sudo dracut --force`.
  4. Add `GRUB_TIMEOUT=0`, `GRUB_HIDDEN_TIMEOUT=0` and `GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=0 vt.global_cursor_default=0 splash"` to /etc/default/grub.
  5. Run `grub-mkconfig -o /boot/grub/grub.cfg`.
  6. [Install grub theme grub2-themes](https://github.com/vinceliuice).

## User
  - Set fish as default shell `chsh -s /usr/bin/fish`.
  - Accept easy password: change "enforce" option from "everyone" to "none" in the /etc/security/passwdqc.conf.

## Fonts
  - /etc/locale.gen
    ```
    en_US.UTF-8 UTF-8
    zh_CN.UTF-8 UTF-8
    ```
  - Fonts:
    1. copy fonts repository to /usr/share/fonts.
    2. [Install noto fonts](https://wiki.gentoo.org/wiki/Fontconfig).
    3. Install media-fonts/nerd-fonts.
    4. Enable 70-no-bitmaps.conf and 10-sub-pixel-rgb.conf.

# [Ibus](https://wiki.gentoo.org/wiki/IBus)
  1. Install ibus-rime.
  2. Copy `etc/environment` to /etc/environment.
  3. Add `exec_always ibus-daemon -drx` to sway config.
  4. Config with `ibus-setup`.
  5. Copy custom config to `~/.config/ibus/rime`.
  6. Switch simple and tradition with `Shift + space`.
  7. [Config rime](https://github.com/rime/home/wiki).

## Pali keyboard layout
	- [keyboard layout on sway](https://github.com/swaywm/sway/issues/4250)

## Cursor theme
  1. [Install gentoo-xcursor](https://wiki.gentoo.org/wiki/Cursor_themes).
  2. Add `seat seat0 xcursor_theme gentoo` in sway config.

## Portage
  - [search package](https://gpo.zugaina.org/app-i18n/fcitx)
  - `sudo emerge --ask app-portage/cfg-update`.
  - Overlay
    ```
    1. `sudo emerge --ask app-eselect/eselect-repository`.
    2. `sudo eselect repository enable guru gentoo-zh dm9pZCAq pg_overlay src_prepare-overlay`.
    3. `sudo emerge --sync`.
    ```

## Network
  - install and enable `iwd` and `dhcpcd`.
  - Enable systemd-networkd.service.
  - Enable systemd-resolved.service.

## Wireguard
  - Generate ssh key `ssh-keygen -t rsa -C "YOUR@EMAIL.com"`.
  - Install wireguard server [on centos7.6](wget https://raw.githubusercontent.com/atrandys/wireguard/master/wireguard_install.sh).
  - ssh-copy-id `wireguard server`.
  - Install `wireguard-tools`.
  - [Client config](https://tech.serhatteker.com/post/2021-01/how-to-set-up-wireguard-client-on-ubuntu-desktop/).
  - /etc/resolv.conf
    ```
    nameserver 114.114.114.114
    ```

## Audio
  1. Install pavucontrol.
  2. pulseaudio --check && pulseaudio -D.

## Qutebrowser
  - Full-screen Setting `cmd: fullscreen --enter`.
  - Set as default browser `xdg-settings set default-web-browser org.qutebrowser.qutebrowser.desktop`

## Fish
  - set `fish` as default shell：`chsh -s /usr/bin/fish`.

## Alacritty
  - [Install alacritty-theme-switch](https://github.com/tichopad/alacritty-theme-switch).
  - Windows
    ```
    1. located in C:\Users\shun\AppData\Roaming\.
    2. send start.bat to desktop.
    3. change name and icon.
    4. create shortcut.
    5. switch theme: `alacritty-theme-switch.cmd --config C:\Users\shun\AppData\Roaming\alacritty\alacritty.yml --themes C:\Users\shun\AppData\Roaming\alacritty\themes --backup C:\Users\shun\AppData\Roaming\alacritty\alacritty.backup.yml`
    ```

## Node
  - `npm install -g pnpm`.
  - pnpm
    ```
    pnpm config set registry https://registry.npm.taobao.org
    pnpm config set -g auto-install-peers true
    pnpm install -g n
    sudo n lts
    ```

## Sioyek
  - Install sys-fs/fuse:0.
  - Open appimage.

## Brightness 
  - Install `app-misc/ddcutil`
  - Detects monitors `sudo ddcutil detect`
  - Get vcp code `sudo ddcutil vcpinfo | grep Bright`
  - Get current brightness `sudo ddcutil getvcp code`
  - Adjust brightness `sudo ddcutil setvcp code - 10`

## Touchpad
  - [wiki](https://wiki.archlinux.org/title/Libinput)
  - Install device tool ：`sudo pacman -S xinput`.
  - Get device name with: `xinput`.
  - Install package：`sudo pacman -S libinput xorg-xinput xf86-input-libinput`.
  - Copy magic.conf to `/etc/X11/xorg.conf.d/`, then logout or reboot.
  - [Config options](https://man.archlinux.org/man/libinput.4).
  - [Install magic gesture](https://github.com/bulletmark/libinput-gestures).
  - Add startup entry in sway config and copy libinput-gestures.conf to.config.

## Other app
  - gamma: `wlsunset`.
  - System tool: `btopt ncdu fd duf tldr dmidecode wev neofetch pip`.
  - File manager: `ranger`.
  - [Terminal dictionary](https://github.com/xueyuanl/cambrinary).
  - Git: `git`, `gitui`.
  - Email client: `aerc`.
  - USB driver: `udisks`.
  - Dict: `goldendict`.
  - EPUB: `sigil AppImage`.
  - Office: `onlyoffice AppImage`.
  - Screenshot : `grimshot`.
  - Image editor: `swappy`.
  - Image viewer: `swayimg`.

