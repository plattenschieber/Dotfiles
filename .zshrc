#this year Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="af-magic"

# Example aliases
 alias zshconfig="gvim ~/.zshrc"
 alias ohmyzsh="gvim ~/.oh-my-zsh"
 alias tensorflow="source ~/tensorflow/bin/activate"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git sudo brew colored-man colorize cp common-aliases extract history-substring-search osx screen taskwarrior z)

source $ZSH/oh-my-zsh.sh

# User configuration

PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/sbin:/usr/local/texlive/2013/bin/universal-darwin:/opt/local/bin:/opt/local/sbin:/Users/hans/miniconda2/bin"; export PATH;
MANPATH="/usr/share/man:/usr/local/share/man:/Library/TeX/Distributions/.DefaultTeX/Contents/Man:/opt/local/share/man:/usr/local/man"; export MANPATH;

# scip configuration
SCIP_PATH="/Users/hans/Documents/Studium/Master/Masterarbeit/Programming/scip-3.2.1"; export SCIP_PATH;

# abacus configuration
ABACUS_DIR="/Users/hans"; export ABACUS_DIR;

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"
function func_q1 {
    if [ $# -ne 1 ]; then
        task q1
    else
        task $1 mod prio:H +urt -unu
        task inbox
    fi
}
function func_q2 {
    if [ $# -ne 1 ]; then
        task q2
    else
        task $1 mod prio:H +unu -urt 
        task inbox
    fi
}
function func_q3 {
    if [ $# -ne 1 ]; then
        task q3
    else
        task $1 mod prio:L +urt -unu  
        task inbox
    fi
}
function func_q4 {
    if [ $# -ne 1 ]; then
        task q4 pro.not:Film
    else
        task $1 mod prio:L +unu -urt 
        task inbox
    fi
}
function func_maybe {
    if [ $# -ne 1 ]; then
        task 
    else
        task $1 mod prio:L -unu +maybe
        task inbox
    fi
}
alias q1="func_q1"
alias q2="func_q2"
alias q3="func_q3"
alias q4="func_q4"
alias maybe="func_maybe"
