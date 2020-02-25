#!/bin/bash 

echo "Setting up vim" 
cat ./vimrc > $HOME/.vimrc 

echo "Setting up tmux" 
conda install -y -c conda-forge tmux 
mkdir -p Pkgs && cd Pkgs 
git clone https://github.com/hengma1001/tmux-config.git 
cd tmux-config 
./install.sh 
