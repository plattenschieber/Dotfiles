# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
eval "$(nodenv init -)"
eval "$(rbenv init -)"
eval $(thefuck --alias)

# Path to your oh-my-zsh installation.
export ZSH="/Users/hans/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
plugins=(git colored-man-pages)
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LSCOLORS=exfxfeaeBxxehehbadacea
alias l='ls -lah'

export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/


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
        . "/Users/hans/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hans/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
