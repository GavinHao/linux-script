#!/bin/bash

cd $HOME;
wget https://nodejs.org/dist/latest/node-v5.5.0-linux-x64.tar.gz;
tar -zxv node-v5.5.0-linux-x64.tar.gz -C /usr/local/;
echo "#set node path" >> ~/.bashrc
echo "export NODE_HOME=/usr/local/node" >> ~/.bashrc
echo "export NODE_PATH=$HOME/lib/node_modules" >> ~/.bashrc
echo "export PATH=$PATH:$NODE_HOME/bin" >> ~/.bashrc
