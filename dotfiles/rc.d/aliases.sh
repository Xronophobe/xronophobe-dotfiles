alias cddev="cd $HOME/dev"
alias gitsetup="vim $HOME/.gitconfig"
alias tmuxsetup="vim $HOME/.tmux.conf"
alias vimsetup="vim $HOME/.vimrc"

if [[ $(uname)="Darwin" ]]; then
  alias vim="/usr/local/Cellar/vim/8.0.0005/bin/vim"
fi
