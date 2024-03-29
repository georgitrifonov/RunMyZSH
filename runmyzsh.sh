#!/bin/bash

apt update && apt install curl git zsh bat -y
chsh -s $(which zsh)
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sed -i 's/^plugins=.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
echo "alias cat='batcat --paging=never --style=plain'\n" >> ~/.zshrc
echo "export TERM=xterm-256color\n" >> ~/.zshrc
echo "bindkey '^[[H' beginning-of-line\n" >> ~/.zshrc
echo "bindkey '^[[F' end-of-line\n" >> ~/.zshrc
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
