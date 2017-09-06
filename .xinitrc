#!/bin/sh

saferun() {
    [ -z "$(pgrep $1)" ] && eval "$@ &"
}

xrdb $HOME/.Xresources
$HOME/.bin/wall-e
$HOME/.bin/touchpadopts
xsetroot -cursor_name left_ptr &


saferun compton -b
saferun unclutter -b
saferun urxvtd -q -f -o
saferun mpd
saferun solaar
saferun fcitx -d
saferun xautolock -time 10 -locker $HOME/.bin/lock
saferun redshift
exec awesome
