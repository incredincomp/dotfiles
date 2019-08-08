# ~/.bashrc
[ -z "$PS1" ] && return

case $- in
	*i*) ;;
	*) return;;
esac

if [ -f /etc/bashrc ]; then
	./etc/bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export HISTFILESIZE=10000
export HISTSIZE=500

export HISTCONTROL=erasedups:ignoredups:ignorespace

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

shopt -s checkwinsize

shopt -s histappend
PROMPT_COMMAND='history -a'

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\][\[\e[33m\]\w\[\e[m\]]\[\e[33m\]:\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
