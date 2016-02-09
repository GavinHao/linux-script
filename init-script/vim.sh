#!/bin/bash

apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev;
#remove the old vim
apt-get autoremove vim vim-runtime;
apt-get autoremove vim-tiny vim-common;

#build vim from source
cd $HOME;
mkdir git
cd git
git clone https://github.com/vim/vim.git
cd vim 
./configure --with-features=huge --enable-multibyte  --enable-pythoninterp  \
	--with-python-config-dir=/usr/lib/python2.7/config --enable-perlinterp \
	--enable-luainterp --enable-cscope --enable-rubyinterp  --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim74
make install

#config the bundle
cd $HOME;
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/vundle
vim +BundleInstall

#install tern
cd $HOME/.vim/bundle/tern_for_vim
npm install

#config the YCM
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer --tern-completer 
