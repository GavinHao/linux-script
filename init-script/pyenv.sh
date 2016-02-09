#!/bin/bash
cd $HOME;
apt-get install python-pip cmake;
pip install pyenv;
echo "#set the pyenv path" >> $HOME/.bashrc
echo "export PATH=/home/gavin/.pyenv/bin:$PATH" >> $HOME/.bashrc
echo "eval $(pyenv init -)" >> $HOME/.bashrc
echo "eval $(pyenv virtualenv-init -)" >> $HOME/.bashrc
