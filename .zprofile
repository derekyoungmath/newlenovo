#!/bin/zsh
#
#
[[ -f ~/.zshrc ]] && source ~/.zshrc

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep -x i3 || exec startx
fi

