#!/bin/bash

# portage
cp /etc/portage/package.mask                etc/portage/
cp /etc/portage/package.unmask              etc/portage/
cp /etc/portage/package.accept_keywords     etc/portage/
cp /etc/portage/make.conf                   etc/portage/
cp -r /etc/portage/package.use              etc/portage/
cp -r /etc/portage/repos.conf               etc/portage/
# kernel config
cp /usr/src/linux/.config                   ./kernel-config   

# git config
cp ~/.gitconfig                             ./ 

# pali keyboard layout
cp -r ~/.xkb                                ./

# install packages
cp /var/lib/portage/world                   ./packages

# sway 
cp ~/.config/sway/config                    .config/sway/
cp ~/.config/sway/startup.sh                .config/sway/

# qutebrowser bookmarks
cp ~/.config/qutebrowser/quickmarks         .config/qutebrowser/

# fish
cp ~/.config/fish/conf.d/alias.fish         .config/fish/conf.d/

# swayimg
cp ~/.config/swayimg/config                 .config/swayimg/

# ranger
cp ~/.config/ranger/rc.conf                 .config/ranger/

# background
cp -r ~/.config/background                  .config/ 

# sioyek
cp -r ~/.config/sioyek                      .config/sioyek 

# rime
cp ~/.local/share/fcitx5/rime/default.custom.yaml                   .local/share/fcitx5/rime/
cp ~/.local/share/fcitx5/rime/luna_pinyin.custom.yaml               .local/share/fcitx5/rime/
