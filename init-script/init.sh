#!/bin/bash

#install software
apt-get install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
	libsqlite3-dev llvm libncurses5-dev libncursesw5-dev ruby-dev python-dev python-pip

apt-get install cmake volumeicon-alsa alsamixergui ibus ibus-pinyin wget curl 

apt-get install tmux aria2 mplayer2 i3 slim 

#bakcup the old conf file
mv ~/.i3/conf ~/.i3/conf.backup
mv ~/.i3/i3status.conf ~/.i3/i3status.conf.bakcup
mv ~/.tmux.conf ~/.tmux.conf.backup
mv ~/.vimrc ~/.vimrc.bakcup
#copy the conf file
cp ../conf/i3.conf ~/.i3/conf
cp ../conf/i3status.conf ~/.i3/i3status.conf
cp ../conf/tmux.conf ~/.tmux.conf
cp ../conf/vimrc ~/.vimrc
#golang
sudo sh golang.sh

#nodejs
sudo sh nodejs.sh

#pyenv
sudo sh pyenv.sh

#vim
sudo sh vim.sh

