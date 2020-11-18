#!/bin/bash

append_str_if_not_there_to_file () {
    if ! grep -q "$1" $2; then
        echo "$1" >> $2
    fi
}
cp ./.vimrc ~/
# xvimrc for xcode
shell=$SHELL
shell_rc=""
vi_mode=""

# handle  mac stuff. it now uses zsh by default
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp ./.vimrc ~/.xvimrc
    shell_rc=~/.zshrc
    vi_mode="bindkey -v"
else
    # we assume bash shell for everything else
    shell_rc=~/.bashrc
    vi_mode="set -o vi"
fi
cp ./.tmux.conf ~/
cp ./.screenrc ~/
if [ ! -d ~/.emacs.d/ ]; then
    mkdir ~/.emacs.d/
fi
cp ./init.el ~/.emacs.d/

append_str_if_not_there_to_file "$vi_mode" $shell_rc
append_str_if_not_there_to_file "export VISUAL=vim" $shell_rc
append_str_if_not_there_to_file "export EDITOR=vim" $shell_rc

