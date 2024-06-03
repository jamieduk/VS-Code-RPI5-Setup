#!/bin/bash
#(c)  J~Net 2024
# https://jnet.forumotion.com/t2014-full-json-config-for-vs-code-and-ollama#3105

echo "Setting Up VS Code For RPi 5"
sudo apt update
sudo apt install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=armhf] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code

echo "Finished"
echo ""
echo "Now add extenion"
echo "code --install-extension ms-python.python"
echo "Or look for json conf file and ctrl p"


