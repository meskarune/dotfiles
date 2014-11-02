# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-`'\'',.]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' original true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/meskarune/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=4000
SAVEHIST=4000
setopt notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Export Settings

export LANG="en_US.UTF-8"
export TZ="/usr/share/zoneinfo/America/New_York"
export EDITOR="vim"

# Command Aliases

alias ls='ls --color=auto -aphF'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias home='cd ~/'
alias openports='netstat -nape --inet'
alias diskspace='du -h --max-depth=1'
alias nyancat='telnet miku.acm.uiuc.edu'
alias grep='grep --color'
alias untar='tar -zxvf'
alias cone='TERM=xterm cone'
alias news='newsbeuter'
alias define='sdcv'
alias shack='telnet velvet.ath.cx'
alias weather='inxi -xxxW galloway,nj'
# SSH Aliases
alias maharani='mosh meskarune@meskarune.com'
alias aw-web='ssh meskarune@archwomen.org'
alias aw-data='ssh meskarune@dataserver.archwomen.org'

# Text Colors
fg_black=%{$'\e[0;30m'%}
fg_red=%{$'\e[0;31m'%}
fg_green=%{$'\e[0;32m'%}
fg_brown=%{$'\e[0;33m'%}
fg_blue=%{$'\e[0;34m'%}
fg_purple=%{$'\e[0;35m'%}
fg_cyan=%{$'\e[0;36m'%}
fg_lgray=%{$'\e[0;37m'%}
fg_dgray=%{$'\e[1;30m'%}
fg_lred=%{$'\e[1;31m'%}
fg_lgreen=%{$'\e[1;32m'%}
fg_yellow=%{$'\e[1;33m'%}
fg_lblue=%{$'\e[1;34m'%}
fg_pink=%{$'\e[1;35m'%}
fg_lcyan=%{$'\e[1;36m'%}
fg_white=%{$'\e[1;37m'%}

#Text Background Colors
bg_red=%{$'\e[0;41m'%}
bg_green=%{$'\e[0;42m'%}
bg_brown=%{$'\e[0;43m'%}
bg_blue=%{$'\e[0;44m'%}
bg_purple=%{$'\e[0;45m'%}
bg_cyan=%{$'\e[0;46m'%}
bg_gray=%{$'\e[0;47m'%}

##Attributes
at_normal=%{$'\e[0m'%}
at_bold=%{$'\e[1m'%}
at_italics=%{$'\e[3m'%}
at_underl=%{$'\e[4m'%}
at_blink=%{$'\e[5m'%}
at_outline=%{$'\e[6m'%}
at_reverse=%{$'\e[7m'%}
at_nondisp=%{$'\e[8m'%}
at_strike=%{$'\e[9m'%}
at_boldoff=%{$'\e[22m'%}
at_italicsoff=%{$'\e[23m'%}
at_underloff=%{$'\e[24m'%}
at_blinkoff=%{$'\e[25m'%}
at_reverseoff=%{$'\e[27m'%}
at_strikeoff=%{$'\e[29m'%}

# Command Prompt
if [ -z "$STY" ]
    then
        PROMPT="${fg_yellow}%n ${fg_lblue}%~ ${fg_lgreen}$ ${at_normal}"
    else
        PROMPT="${fg_lblue}%~ ${fg_lgreen}$ ${at_normal}"
fi
