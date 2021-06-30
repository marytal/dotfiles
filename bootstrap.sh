#!/bin/zsh

# Install ZPlug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# ZSH
ln -sfn ~/dotfiles/zsh ~/.zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Tmux
ln -sfn ~/dotfiles/tmux ~/.tmux
ln -sf ~/.tmux/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Vim
ln -sfn ~/dotfiles/vim ~/.vim
ln -sf ~/.vim/vimrc ~/.vimrc

# Git
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global

# GPG
gpgconf --launch dirmngr
gpg --keyserver keys.openpgp.org --recv 07C18E0C90894E0E863AE4AB0BF7EB13314D09C9

# Install FZF
if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v jq &> /dev/null; then
  sudo apt-get install -y jq
fi

eval "$(curl -sSL https://bit.ly/2Kzj4Xd)"

source ~/.zshrc
zplug install
tmux source-file ~/.tmux.conf
vim +PlugInstall +qall!
