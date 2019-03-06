# .profile for Ford's Macbook Pro

export EDITOR=vim
export TERM=xterm-256color

# PostgreSQL
#export PGDATA=/usr/local/var/postgres

#export PYTHONSTARTUP=$HOME/.pythonstartup

shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=40000

PS1='\[\033[1;34m\]\w\[\033[00m\]$(vcprompt -f " \[\033[0;30m\033[46m\][%b]\[\033[00m\]") \$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}$(vcprompt -f :%b)\007"'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

source ~/.private/keys
# source ~/.private/keys.gracious
source ~/.paths
source ~/.aliases

#complete -C aws_completer aws

source $(which virtualenvwrapper.sh)

#[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Powerline shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# make git stop complaining about my ssh key:
#ssh-add -K ~/.ssh/id_rsa

