#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=/usr/bin/nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jvillanueva/.sdkman"
[[ -s "/home/jvillanueva/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jvillanueva/.sdkman/bin/sdkman-init.sh"
