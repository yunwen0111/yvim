#!/bin/bash

project=`pwd`
cd ~
rm -f .vimrc .vimrc_tab
ln -s $project/vimrc .vimrc
ln -s $project/vimrc_tab .vimrc_tab
