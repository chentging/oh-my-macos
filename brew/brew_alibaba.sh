#!/bin/sh

# 不建议使用,已经不同步

cd "$(brew --repo)" 
git remote set-url origin git://mirrors.aliyun.com/homebrew/brew.git

cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin git://mirrors.ustc.edu.cn/homebrew-core.git 

sed -i ""  '/^export HOMEBREW_BOTTLE_DOMAIN.*/d' $HOME/.bashrc

echo "export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles" >>$HOME/.bashrc


brew update 
source ~/.bashrc
