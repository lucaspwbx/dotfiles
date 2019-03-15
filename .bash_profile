#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export EDITOR=vim
export BROWSER=firefox
export TERMINAL=termite
export NVIMCONFIG=$HOME/.config/nvim
export NVIMDATA=$HOME/.local/share/nvim
export PRINTS_PATH=$HOME/concurso/redes/questoes
export VISUAL=nvim

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

#export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
