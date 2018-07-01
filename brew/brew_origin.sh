cd "$(brew --repo)" 
git remote set-url origin git://github.com/Homebrew/brew.git


cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core" 
git remote set-url origin git://github.com/Homebrew/homebrew-core.git 

 
source ~/.bashrc
