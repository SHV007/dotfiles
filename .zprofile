
emulate sh -c 'source /etc/profile'

# change the path of .zshrc
export ZDOTDIR="$HOME/.config/zsh"

# startx
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
