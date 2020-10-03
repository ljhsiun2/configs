#!/bin/sh

INSTALL_DIR=~/test

mkdir -p ~/bin
cp -r tmux-files/.tmux* $INSTALL_DIR
cp -r vim-files/.vim* $INSTALL_DIR
cp bash_aliases $INSTALL_DIR/.bash_aliases

# vim setup
cd $INSTALL_DIR/.vim/bundle
vim -u NONE -c "helptags vim-bsession/doc" -c q

echo "installing binaries in ~/bin: requires sudo perms"
which apt >/dev/null 2>&1
if [ $? -eq 0  ]
then
    # fd
    sudo apt-get install fd-find
    # ripgrep
    curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb; sudo dpkg -i ripgrep_11.0.2_amd64.deb
else
    echo "Not a debian distro: install binaries manually"
fi

