#!/usr/bin/env bash

if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
    echo "oh-my-zsh already installed!"
    exit -1
fi

echo "Install oh-my-zsh ..."

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
