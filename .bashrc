PROMPT_COMMAND="history -a; history -r"
export HISTFILESIZE=99999
export HISTSIZE=99999
HISTCONTROL=ignoredups:erasedups

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias l='ls -lah --color=auto'
alias '..=cd ..'
alias 'gst=git status'

export COLORED_FAIL="\e[31mFAILED\e[32m:"
export COLORED_WARN="\e[34mWARN\e[33m:"
export COLORED_INFO="\e[34mINFO\e[34m:"
