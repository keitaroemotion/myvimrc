cp .vimrc ~/.vimrc
SUGAVIM=~/.vim/sugavim
SUGAVIM_BIN=~/.vim/sugavim/bin
SUGAVIM_CFG=~/.vim/sugavim/config

mkdir -p $SUGAVIM_BIN
mkdir -p $SUGAVIM_CFG

cp misc/*   $SUGAVIM_BIN
cp config/* $SUGAVIM_CFG

chmod +x $SUGAVIM_BIN/*
