#!/usr/bin/zsh

export WALLPAPER_PATH=/home/jvillanueva/Pictures/walls/cyber.png

export NOTIFYD_FIFO_PATH=/tmp/notifyd.fifo
export NOTIFYD_FONT="artwiz lime-8"
export NOTIFYD_ICON_FONT="FontAwesome-8"
export NOTIFYD_OFFSET="-3"
export NOTIFYD_BORDER=2.5

export EDITOR=/usr/bin/nvim
export GUI_EDITOR=/usr/bin/atom
export VISUAL=/usr/bin/nvim
export PAGER=less
export BROWSER=/usr/bin/google-chrome-stable

export LESS=' -F -g -i -M -R -S -w -X -z-4'

export SUDO_PROMPT="[sudo] auth $(tput bold)$(tput setaf 1)%U$(tput sgr0) "

export GOROOT=$HOME/dev/sdk/go/current
export GOPATH=$HOME/dev/projects/go
#export JAVA_HOME=$HOME/dev/sdk/java/current
#export JRE_HOME=$JAVA_HOME/jre
#export GRADLE_HOME=$HOME/dev/build-tools/gradle/current
#export M2_HOME=$HOME/dev/build-tools/maven/current

export NAS_PATH=$GOROOT/bin:$GOPATH/bin

export _JAVA_AWT_WM_NONREPARENTING=1

export PATH=$HOME/.bin:$HOME/.local/bin:$NAS_PATH:$PATH

