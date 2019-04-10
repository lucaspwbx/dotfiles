#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export EDITOR=nvim
export BROWSER=firefox
export TERMINAL=kitty
export NVIMCONFIG=$HOME/.config/nvim
export NVIMRC=$HOME/.config/nvim/init.vim
export NVIMDATA=$HOME/.local/share/nvim
export VISUAL=nvim
export GOPATH=$HOME/go
export APPSPATH=$HOME/apps

#PATH="$HOME/.node_modules/bin:$PATH"
#export npm_config_prefix=~/.node_modules

source /usr/share/nvm/init-nvm.sh

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

#export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
