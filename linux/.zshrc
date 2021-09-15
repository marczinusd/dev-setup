# export PATH=$HOME/bin:/usr/local/bin:$PATH

# !! Comment out below block if tmux is set up
# cd
# git clone https://github.com/gpakosz/.tmux.git
# ln -s -f .tmux/.tmux.conf
# cp .tmux/.tmux.conf.local .
# !! tmux setup end

export ZSH="/home/marczinusd/.oh-my-zsh"

ZSH_THEME="awesomepanda"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Aliases

alias initdocker="sudo dockerd &> /dev/null &"
alias exer="exercism.exe"
alias ghc="stack ghc"
alias ghci="stack ghci"
alias st='git status'
alias fd='fdfind'
alias efzf='code $(fzf)'
alias nn='nnn -eDU'
alias gconfig='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# !! Dangerous aliases

alias cat='bat'
alias diff='delta'
alias top='zenith'

export PATH=$PATH:$HOME/.dotnet/tools
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.tools
export EDITOR=code
export GDK_SCALE=1.50
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;t:nmount;v:imgview'
export NNN_FIFO='/tmp/nnn.fifo'
export TERMINAL=tmux
export BAT_THEME="TwoDark"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/marczinusd/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/marczinusd/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/marczinusd/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/marczinusd/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

plugins=(gitfast docker dotnet npm stack ubuntu python cargo zoxide)

source $ZSH/oh-my-zsh.sh

@

echo '   *** \e[33;1mUnix commands to remember\e[m ***'
echo ''
echo '\e[33;1m\tbat \e[m-> cat replacement'
echo '\e[33;1m\texa \e[m-> ls replacement'
echo '\e[33;1m\tdelta \e[m-> diff replacement'
echo '\e[33;1m\tfd \e[m-> find replacement'
echo '\e[33;1m\trg \e[m-> grip replacement'
echo '\e[33;1m\tz/zoxide \e[m-> cd replacement'
echo '\e[33;1m\tfzf \e[m-> fuzzy finder'
echo '\e[33;1m\thttp \e[m-> httpie'
echo '\e[33;1m\tnn/nnn \e[m-> file explorer'
echo '\e[33;1m\thyperfine \e[m-> commandline benchmark'
echo '\e[33;1m\tzenith \e[m-> htop/gtop replacement in Rust'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# !! oh-my-zsh overrides

alias l='exa -lah'
alias ll='exa -lah'

# !! end overrides