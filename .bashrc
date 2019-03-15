#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Activate vi mode with <Escape>
alias ls='ls --color=auto'
alias rss='newsboat'
alias gc='git commit -m'
alias ga='git add'
alias gst='git status'
alias tst='npm test'
alias hst='sudo vim /etc/hosts'
alias gl='git log --graph --oneline --all'
alias monta='sudo mount -o rw,users,umask=000 /dev/sdb1 /mnt/kindle'
PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/.vim/plugged/vim-iced/bin:$PATH"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
