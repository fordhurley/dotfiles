export EDITOR=vim
export TERM=xterm-256color

shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=40000

# Enable recursive globbing with **, if available (Bash 4+)
shopt -s globstar 2> /dev/null;

PS1='\[\033[1;34m\]\w\[\033[00m\]$(vcprompt -f " \[\033[0;30m\033[46m\][%b]\[\033[00m\]") \$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}$(vcprompt -f :%b)\007"'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

source ~/.private/keys
source ~/.paths
source ~/.aliases

#complete -C aws_completer aws

source $(which virtualenvwrapper.sh)

#[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Powerline shell:
# https://github.com/b-ryan/powerline-shell/
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# make git stop complaining about my ssh key:
#ssh-add -K ~/.ssh/id_rsa
