#!/bin/sh

cd /home/node

## LERNA

yarn global add lerna

## GH CLI v1.10.3
wget -nc https://github.com/cli/cli/releases/download/v1.10.3/gh_1.10.3_linux_amd64.deb
dpkg -i gh_1.10.3_linux_amd64.deb

# PREPARE THE REPO
cd /workspaces/nextauthjs-pouchdb-adapter
git config checkout.defaultRemote origin
git remote add upstream https://github.com/nextauthjs/adapters.git
git fetch --all
git checkout canary
git checkout main .devcontainer
git reset HEAD .devcontainer/*
