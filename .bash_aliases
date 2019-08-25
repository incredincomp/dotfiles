alias suspend="sudo systemctl suspend"

# git stuff. set up git dev env as /git_stuff mine and theirs to dif between your stuff and theirs
alias gitmine="cd ~/git_stuff/mine/ && ls -al"
alias gityour="cd ~/git_stuff/theirs/ && ls -al"
alias gitp="git pull"
alias gitca="git commit -a"
alias gitps="git push"

# just for use with updating this for dev
alias sas="cp .bashrc .bash_aliases ~/ && cd ~ && . .bashrc && . .bash_aliases"

# basic rewrites
alias gohome="cd ~"
alias ls="ls --color=auto"
alias ll="ls -al"
alias l.="ls -d .* --color=auto"
alias c="clear"
alias cd..="cd .."
alias ..="cd .."
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias rm="rm -I --preserve-root"
alias histg="history | grep"
alias grep="grep --color=auto"

# program aliases
alias sc="kazam"
alias vpnon="expressvpn connect"
alias vpnoff="expressvpn disconnect"
alias changemac="sudo macchanger -rb wlp2s0"
alias dvwa="sudo docker run --rm -it -p 80:80 vulnerables/web-dvwa"
# networking stuffs
alias ping="ping -c 5"
alias ports="netstat -tulanp"
alias ipe="curl ipinfo.io/ip"

# curl hacks
alias header="curl -I"
alias headerc="curl -I --compressed"

# system usage checks
alias meminfo="free -m -l -t"

# top of memory
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"

# top of cpu
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"

# decompressing files
alias untar="tar -zxvf"

# get file chucksum
alias checksum="shasum -a 256 "
