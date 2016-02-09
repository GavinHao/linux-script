#!/bin/bash

cd $HOME
wget http://www.golangtc.com/static/go/go1.5.3/go1.5.3.linux-amd64.tar.gz
tar -zxv go1.6rc2.linux-amd64.tar.gz -C /usr/local/
echo "#set GOROO&GOPATH path" >> $HOME/.bashrc
echo "export GOROOT=/usr/local/go" >> $HOME/.bashrc
echo "export GOPATH=$HOME/workspace/go" >> $HOME/.bashrc
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> $HOME/.bashrc
