#!/usr/bin/env bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
asdf plugin add python
asdf install python latest
asdf install python latest:3.9

asdf global python $(asdf list python | sort -V | tail -1)
asdf reshim
