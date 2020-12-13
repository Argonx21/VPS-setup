#!/bin/bash
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder | GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx | GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei 
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
echo "Setting up gf patterns"
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc
mkdir .gf
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf
mv ~/.gf/examples/*.json ~/.gf

