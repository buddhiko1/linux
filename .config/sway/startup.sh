#!/usr/bin/env bash

# web workspace
swaymsg 'workspace 1; exec qutebrowser'

# editor workspace
sleep 3
swaymsg 'workspace 2; exec ~/.config/nvim/start.sh'

# terminal workspace
swaymsg 'workspace 3'

# other workspace
swaymsg 'workspace 4'

# start other app
# swaymsg 'exec goldendict'

# set editor workspace as home workspace
swaymsg 'workspace number 2'

# audio
swaymsg 'exec pulseaudio -D'
