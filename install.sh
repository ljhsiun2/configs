#!/bin/sh

mkdir -p ~/bin
cp -r tmux-files/.tmux* ~/
cp -r vim-files/.vim* ~/

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

