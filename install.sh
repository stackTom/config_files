#!/bin/bash

cp ./.vimrc ~/
# xvimrc for xcode
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp ./.vimrc ~/.xvimrc
fi
cp ./.tmux.conf ~/
cp ./init.el ~/.emacs.d/

