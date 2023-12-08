cp .vimrc ~/.vimrc
SUGAVIM=~/.vim/sugavim
SUGAVIM_BIN=~/.vim/sugavim/bin
SUGAVIM_WIKI=~/.vim/sugavim/wiki
SUGAVIM_CFG=~/.vim/sugavim/config

mkdir -p $SUGAVIM_BIN
mkdir -p $SUGAVIM_CFG
mkdir -p $SUGAVIM_WIKI

cp misc/*   $SUGAVIM_BIN
# cp -i bin/*    /usr/local/bin
cp config/* $SUGAVIM_CFG

chmod +x $SUGAVIM_BIN/*
