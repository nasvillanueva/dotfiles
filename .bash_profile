#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jvillanueva/.sdkman"
[[ -s "/home/jvillanueva/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jvillanueva/.sdkman/bin/sdkman-init.sh"
