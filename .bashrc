#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vim=nvim
alias spacemacs='HOME=~/spacemacs emacs'
alias ls='ls --color=auto'
alias rss='newsboat'
alias gc='git commit -m'
alias ga='git add'
alias gst='git status'
alias tst='npm test'
alias hst='sudo vim /etc/hosts'
alias gl='git log --graph --oneline --all'
alias monta='sudo mount -o rw,users,umask=000 /dev/sdb1 /mnt/kindle'
alias dokku='$HOME/.dokku/contrib/dokku_client.sh'
PS1='[\u@\h \W]\$ '

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.vim/plugged/vim-iced/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/apps:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/neovim/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

source ~/.nvm/nvm.sh
source <(kitty + complete setup bash)

#. $HOME/.asdf/asdf.sh
#
#. $HOME/.asdf/completions/asdf.bash
source /home/lucas/.local/bin/activate.sh
#eval "$(pipenv --completion)"
