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

export PS1=" \[$(tput sgr0)\]\[\033[38;5;1m\]\u\[$(tput sgr0)\]\[\033[38;5;11m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;1m\][\[$(tput sgr0)\]\[\033[38;5;7m\]\w\[$(tput sgr0)\]\[\033[38;5;1m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]"
