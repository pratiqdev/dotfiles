#!/bin/bash

# COPY git globals 
cp ./.gitmessage ~
cp ./.gitconfig ~

# INSTALL micro/zoxide/zsh/fira		
sudo apt install micro zoxide zsh fonts-firacode

# INSTALL oh-my-zosh			
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# INSTALL zsh-autosuggestions		
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# INSTALL zsh-syntax-highlighting	
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# INSTALL you-should-use
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use


# change default shell		
chsh -s $(which zsh)

# reload zsh config            	
source ~/.zshrc