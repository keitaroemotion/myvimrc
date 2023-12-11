set -e -x

sudo rm -rf ~/.vim/bundle/YouCompleteMe
./setup.sh
brew install cmake
curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
curl -fLo "${HOME}/.ycm_extra_conf.py" "https://raw.githubusercontent.com/Valloric/ycmd/master/.ycm_extra_conf.py"
vim +PlugInstall +"sleep 1000m" +qall
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --clang-completer --system-libclang
