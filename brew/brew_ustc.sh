#!/bin/sh

cd "$(brew --repo)" 
git remote set-url origin git://mirrors.ustc.edu.cn/brew.git 

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git 
sed -i ""  '/^export HOMEBREW_BOTTLE_DOMAIN.*/d' $HOME/.bashrc
echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles" >>$HOME/.bashrc

source  ~/.bashrc

brew update 
