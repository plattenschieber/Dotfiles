export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
# eval "$(nodenv init -)"
# eval "$(rbenv init -)"
eval $(thefuck --alias)
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/hans/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
plugins=(git vi-mode colored-man-pages docker)
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LSCOLORS=exfxfeaeBxxehehbadacea
alias l='ls -lah'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 
 # >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hans/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hans/miniconda3/etc/profile.d/conda.sh" ]; then
# . "/Users/hans/miniconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
    else
# export PATH="/Users/hans/miniconda3/bin:$PATH"  # commented out by conda initialize
    fi
fi
unset __conda_setup

if [ -f "/Users/hans/miniconda3/etc/profile.d/mamba.sh" ]; then
    . "/Users/hans/miniconda3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
# # pip zsh completion start
function _pip_completion {
  local words cword
  read -Ac words
  read -cn cword
  reply=( $( COMP_WORDS="$words[*]" \
             COMP_CWORD=$(( cword-1 )) \
             PIP_AUTO_COMPLETE=1 $words[1] 2>/dev/null ))
}
compctl -K _pip_completion pip
# pip zsh completion end
