set -e -x
brew install cmake python go nodejs
brew install java
sudo ln -sfn $(brew --prefix java)/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --all
brew install vim cmake
cd ~/.vim/bundle/YouCompleteMe
./install.py --clangd-completer
./install.py --go-completer
./install.py --java-completer
./install.py --rust-completer
