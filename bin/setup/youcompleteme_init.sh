#!/bin/bash

cd ~/.vim
git submodule update --init --recursive
cd pack/plugins/start/YouCompleteMe
python3 install.py --all

