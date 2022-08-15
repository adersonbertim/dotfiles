######################################################################
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║     
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
######################################################################

### Exports ###
export PATH=~/.cargo/bin:~/.local/bin:$PATH
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export EDITOR="nvim"
export TERM="alacritty"
export BROWSER="brave"
HISTCONTROL=erasedups
HISTFILE="$XDG_DATA_HOME"/bash/history
PS1="\[$(tput bold)\]\[$(tput setaf 6)\][\[$(tput setaf 2)\]\t $(tput setaf 4)\u@\[$(tput setaf 4)\]arch\[$(tput setaf 4)\]\w\[$(tput setaf 6)\]]\[$(tput setaf 6)\]\\$\[$(tput sgr0)\]"

### Options ##
set -o vi
shopt -s histappend

### Change window title ###
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st-256color|konsole*)
 PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
  screen)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
fi

### Aliases ###
alias vi=nvim
