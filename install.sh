#!/usr/bin/env bash
# This script install several tools I usually need in a vm

# install and configure asdf
echo "Installing asdf"
curl -sSL https://github.com/yok4i/vm/raw/main/asdf.sh | bash

# install poetry
echo "Installing poetry"
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
source $HOME/.poetry/env
poetry config virtualenvs.in-project true

# install tools
echo "Installing tools"
mkdir $HOME/tools
cd $HOME/tools
echo "--> install rotating-proxy"
git clone https://github.com/yok4i/rotating-proxy.git
echo "--> installing msspray"
git clone https://github.com/yok4i/msspray.git; $(cd msspray && poetry install)
echo "--> installing MSOLSpray"
git clone https://github.com/yok4i/MSOLSPray.git; $(cd MSOLSpray && poetry install)
echo "--> installing SprayingToolkit"
git clone https://github.com/yok4i/SprayingToolkit.git; $(cd SprayingToolkit && poetry install)
echo "--> installing domsprayer"
git clone https://github.com/yok4i/domsprayer.git; $(cd domsprayer && poetry install)
echo "--> installing imapsprayer"
git clone https://github.com/yok4i/imapsprayer.git; $(cd imapsprayer && poetry install)

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
