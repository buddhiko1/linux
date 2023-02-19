# abbr

set -g LIGHT_COLOR 'dawnfox.yml'
set -g DARK_COLOR 'nightfox.yml'
  
function audio --description 'audio'
  pavucontrol
end

function dd --description 'english dictonary'
  cambrinary -w $argv
end

function disk --description 'disk'
  ncdu $argv
end

function doc --description 'search linux document'
  tldr $argv
end

function email --description 'email'
  aerc $argv
end

# emerge 
function es --description 'emerge search'
  sudo emerge --search $argv
end

function ei --description 'emerge install'
  sudo emerge --ask $argv
end

function ed --description 'emerge uninstall'
  sudo emerge --deselect $argv
end

function eu --description 'emerge update'
  sudo emerge --update --deep --newuse @world
end

function ec --description 'emerge deep clean'
  sudo emerge --ask --depclean
end

function el --description 'list installed packages'
  sudo qlist -IRv $argv
end

function en --description 'read news'
  sudo eselect news read
end

function ef --description 'emerge use flag'
  sudo emerge --info | grep ^USE
end

function esync --description 'emerge sync'
  sudo emerge --sync
end

# file manager
function f --description 'file manager'
  sudo -E ranger
end

# git
function gc --description 'git clone'
  git clone $argv
end

function gp --description 'git push '
  git push
end

function gui --description 'gitui'
  gitui
end

# image
function iv --description 'image viewer'
  swayimg $argv
end

function ic --description 'screenshot'
  grimshot save area ~/Pictures/last.png
end

function ie --description 'edit screenshot'
  swappy -f ~/Pictures/last.png -o ~/Pictures/last.png
end

# angular 
function ns --description 'ng serve --open'
  pkill node && ng serve  --host 0.0.0.0 $argv
end

# pnpm
function pi --description 'pnpm install'
  pnpm install $argv
end

function pa --description 'pnpm add'
  pnpm add $argv
end

function pu --description 'pnpm update'
  pnpm add $argv
end

function pe --description 'pnpm exec'
  pnpm exec $argv
end

function pd --description 'pnpm rm'
  pnpm rm $argv
end

function pc --description 'pnpm store prune'
  pnpm store prune $argv
end

# ssh
function ssh --description 'ssh'
  TERM=xterm-256color /usr/bin/ssh $argv
end

# system
function ss --description 'print system summary'
  neofetch
end

function si --description 'print system info'
  btop $argv
end

function sl --description 'check system boot error'
  journalctl -b 0 -p 4
end

# supper user
function sr --description 'su -m root'
  su -m root
end

# theme tool
function tl --description 'switch to light theme'
  alacritty-theme-switch -s $LIGHT_COLOR
end

function td --description 'switch to dark theme'
  alacritty-theme-switch -s $DARK_COLOR
end

function ts --description 'select theme'
  alacritty-theme-switch $argv 
end

# usb
function um --description 'mount usb'
  udisksctl mount -b /dev/sdb1
end

function uu --description 'unmount usb'
  udisksctl unmount -b /dev/sdb1
end

# nvim
function vim --description 'nvim'
  sudo -E nvim $argv
end

# working directory
function wpw --description 'pali-web'
  cd ~/pali-web
end

# function wps --description 'pali-server'
#   cd ~/pali-server
# end

function wd --description 'download'
  cd ~/Downloads
end
