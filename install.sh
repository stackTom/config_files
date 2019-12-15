#!/bin/bash

cp ./.vimrc ~/
# xvimrc for xcode
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp ./.vimrc ~/.xvimrc
fi
cp ./.tmux.conf ~/
if [ ! -d ~/.emacs.d/ ]; then
    mkdir ~/.emacs.d/
fi
cp ./init.el ~/.emacs.d/

if ! grep -q "set -o vi" ~/.bashrc; then
    echo "set -o vi" >> ~/.bashrc
fi
if ! grep -q "export VISUAL=vim" ~/.bashrc; then
    echo "export VISUAL=vim" >> ~/.bashrc
fi
if ! grep -q "export EDITOR=vim" ~/.bashrc; then
    echo "export EDITOR=vim" >> ~/.bashrc
fi

