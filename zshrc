# load all files from rc.d
if [ -d $HOME/dotfiles/rc.d ]; then
  for file in $HOME/dotfiles/rc.d/*.sh; do
    source $file
  done
fi

# load all files from zshrc.d
if [ -d $HOME/dotfiles/zsh.d ]; then
  for file in $HOME/dotfiles/zsh.d/*.zsh; do
    source $file
  done
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/xphe/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

zstyle ':completion:*' special-dirs true
# bindkey -v

# source $HOME/.npm-completion

get_current_git_branch() {
    git branch 2> /dev/null|sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
