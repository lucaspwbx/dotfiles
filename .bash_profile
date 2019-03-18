#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export EDITOR=vim
export BROWSER=firefox
export TERMINAL=termite
export NVIMCONFIG=$HOME/.config/nvim
export NVIMDATA=$HOME/.local/share/nvim
export VISUAL=nvim
export GOPATH=$HOME/go

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

#export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
