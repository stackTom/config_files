#!/bin/bash

append_str_if_not_there_to_file () {
    if ! grep -q "$1" $2; then
        echo "$1" >> $2
    fi
}
cp ./.vimrc ~/
# xvimrc for xcode
if [[ "$OSTYPE" == "darwin"* ]]; then
    cp ./.vimrc ~/.xvimrc
fi
cp ./.tmux.conf ~/
cp ./.screenrc ~/
if [ ! -d ~/.emacs.d/ ]; then
    mkdir ~/.emacs.d/
fi
cp ./init.el ~/.emacs.d/

# handle zsh since Mac OS uses it by default
# TODO: put this in above if which checks for darwin?
shell=$SHELL
shell_rc=""
vi_mode=""
if [[ "$SHELL" == *"zsh"* ]]; then
    shell_rc=~/.zshrc
    vi_mode="bindkey -v"
elif [[ "$SHELL" == *"bash"* ]]; then
    shell_rc=~/.bashrc
    vi_mode="set -o vi"
fi

append_str_if_not_there_to_file "$vi_mode" $shell_rc
append_str_if_not_there_to_file "export VISUAL=vim" $shell_rc
append_str_if_not_there_to_file "export EDITOR=vim" $shell_rc

