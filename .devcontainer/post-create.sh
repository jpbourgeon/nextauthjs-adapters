#!/bin/sh

cd /home/node

## LERNA

yarn global add lerna

## GH CLI v1.9.2
wget -nc https://github.com/cli/cli/releases/download/v1.9.2/gh_1.9.2_linux_amd64.deb
dpkg -i gh_1.9.2_linux_amd64.deb

# PREPARE THE REPO
cd /workspaces/nextauthjs-pouchdb-adapter
git config checkout.defaultRemote origin
git remote add upstream https://github.com/nextauthjs/adapters.git
git fetch --all
git checkout canary
